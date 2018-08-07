<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" href="${APP_PATH}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${APP_PATH}/css/main.css">
    <style>
        .tree li {
            list-style-type: none;
            cursor:pointer;
        }
        .tree-closed {
            height : 40px;
        }
        body {
            font-family: Monospace;
            background-color: #000;
            color: #000;
            margin: 0px;
            overflow: hidden;
        }

        #info {
            position: absolute;
            padding: 10px;
            width: 100%;
            text-align: center;
        }

        a {
            text-decoration: underline;
            cursor: pointer;
        }

    </style>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <div><a class="navbar-brand" style="font-size:32px;" href="#">main</a></div>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li style="padding-top:8px;">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default btn-success dropdown-toggle" data-toggle="dropdown">
                            <i class="glyphicon glyphicon-user"></i>${loginUser.username}<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
                            <li class="divider"></li>
                            <li><a href="logout"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
                        </ul>
                    </div>
                </li>
                <li style="margin-left:10px;padding-top:8px;">
                    <button type="button" class="btn btn-default btn-danger">
                        <span class="glyphicon glyphicon-question-sign"></span> 帮助
                    </button>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="查询">
            </form>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <div class="tree">
                <%@ include file="/WEB-INF/jsp/common/menu.jsp"%>
            </div>
        </div>
    </div>
</div>



<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header">控制面板</h1>

    <%--<div id="main" style="width: 600px;height:400px;">
        我看见过波澜壮阔的带花我看见过波澜壮阔的带花我看见过波澜壮阔的带花我看见过波澜壮阔的带花我看见过波澜壮阔的带花
    </div>--%>
    <div id="info">Simple Cloth Simulation<br/>
        Verlet integration with relaxed constraints<br/>
        <a onclick="wind = !wind;">Wind</a> |
        <a onclick="sphere.visible = !sphere.visible;">Ball</a> |
        <a onclick="togglePins();">Pins</a>
    </div>
</div>


<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/script/docs.min.js"></script>

<script src="${APP_PATH}/script/three.js"></script>
<script src="${APP_PATH}/script/Detector.js"></script>
<script src="${APP_PATH}/script/OrbitControls.js"></script>
<script src="${APP_PATH}/script/stats.min.js"></script>

<script src="js/Cloth.js"></script>
<script type="text/javascript">
    $(function () {
        $(".list-group-item").click(function(){
            // jquery对象的回调方法中的this关键字为DOM对象
            // $(DOM) ==> JQuery
            if ( $(this).find("ul") ) { // 3 li
                $(this).toggleClass("tree-closed");
                if ( $(this).hasClass("tree-closed") ) {
                    $("ul", this).hide("fast");
                } else {
                    $("ul", this).show("fast");
                }
            }
        });
    });


    var pinsFormation = [];
    var pins = [ 6 ];

    pinsFormation.push( pins );

    pins = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
    pinsFormation.push( pins );

    pins = [ 0 ];
    pinsFormation.push( pins );

    pins = []; // cut the rope ;)
    pinsFormation.push( pins );

    pins = [ 0, cloth.w ]; // classic 2 pins
    pinsFormation.push( pins );

    pins = pinsFormation[ 1 ];


    function togglePins() {

        pins = pinsFormation[ ~~ ( Math.random() * pinsFormation.length ) ];

    }

    if ( ! Detector.webgl ) Detector.addGetWebGLMessage();

    var container, stats;
    var camera, scene, renderer;

    var clothGeometry;
    var sphere;
    var object;

    init();
    animate();

    function init() {

        container = document.createElement( 'div' );
        document.body.appendChild( container );

        // scene

        scene = new THREE.Scene();
        scene.background = new THREE.Color( 0xcce0ff );
        scene.fog = new THREE.Fog( 0xcce0ff, 500, 10000 );

        // camera

        camera = new THREE.PerspectiveCamera( 30, window.innerWidth / window.innerHeight, 1, 10000 );
        camera.position.set( 1000, 50, 1500 );

        // lights

        var light, materials;

        scene.add( new THREE.AmbientLight( 0x666666 ) );

        light = new THREE.DirectionalLight( 0xdfebff, 1 );
        light.position.set( 50, 200, 100 );
        light.position.multiplyScalar( 1.3 );

        light.castShadow = true;

        light.shadow.mapSize.width = 1024;
        light.shadow.mapSize.height = 1024;

        var d = 300;

        light.shadow.camera.left = - d;
        light.shadow.camera.right = d;
        light.shadow.camera.top = d;
        light.shadow.camera.bottom = - d;

        light.shadow.camera.far = 1000;

        scene.add( light );

        // cloth material

        var loader = new THREE.TextureLoader();
        var clothTexture = loader.load( 'textures/patterns/circuit_pattern.png' );
        clothTexture.anisotropy = 16;

        var clothMaterial = new THREE.MeshLambertMaterial( {
            map: clothTexture,
            side: THREE.DoubleSide,
            alphaTest: 0.5
        } );

        // cloth geometry

        clothGeometry = new THREE.ParametricGeometry( clothFunction, cloth.w, cloth.h );

        // cloth mesh

        object = new THREE.Mesh( clothGeometry, clothMaterial );
        object.position.set( 0, 0, 0 );
        object.castShadow = true;
        scene.add( object );

        object.customDepthMaterial = new THREE.MeshDepthMaterial( {

            depthPacking: THREE.RGBADepthPacking,
            map: clothTexture,
            alphaTest: 0.5

        } );

        // sphere

        var ballGeo = new THREE.SphereBufferGeometry( ballSize, 32, 16 );
        var ballMaterial = new THREE.MeshLambertMaterial();

        sphere = new THREE.Mesh( ballGeo, ballMaterial );
        sphere.castShadow = true;
        sphere.receiveShadow = true;
        scene.add( sphere );

        // ground

        var groundTexture = loader.load( 'textures/terrain/grasslight-big.jpg' );
        groundTexture.wrapS = groundTexture.wrapT = THREE.RepeatWrapping;
        groundTexture.repeat.set( 25, 25 );
        groundTexture.anisotropy = 16;

        var groundMaterial = new THREE.MeshLambertMaterial( { map: groundTexture } );

        var mesh = new THREE.Mesh( new THREE.PlaneBufferGeometry( 20000, 20000 ), groundMaterial );
        mesh.position.y = - 250;
        mesh.rotation.x = - Math.PI / 2;
        mesh.receiveShadow = true;
        scene.add( mesh );

        // poles

        var poleGeo = new THREE.BoxBufferGeometry( 5, 375, 5 );
        var poleMat = new THREE.MeshLambertMaterial();

        var mesh = new THREE.Mesh( poleGeo, poleMat );
        mesh.position.x = - 125;
        mesh.position.y = - 62;
        mesh.receiveShadow = true;
        mesh.castShadow = true;
        scene.add( mesh );

        var mesh = new THREE.Mesh( poleGeo, poleMat );
        mesh.position.x = 125;
        mesh.position.y = - 62;
        mesh.receiveShadow = true;
        mesh.castShadow = true;
        scene.add( mesh );

        var mesh = new THREE.Mesh( new THREE.BoxBufferGeometry( 255, 5, 5 ), poleMat );
        mesh.position.y = - 250 + ( 750 / 2 );
        mesh.position.x = 0;
        mesh.receiveShadow = true;
        mesh.castShadow = true;
        scene.add( mesh );

        var gg = new THREE.BoxBufferGeometry( 10, 10, 10 );
        var mesh = new THREE.Mesh( gg, poleMat );
        mesh.position.y = - 250;
        mesh.position.x = 125;
        mesh.receiveShadow = true;
        mesh.castShadow = true;
        scene.add( mesh );

        var mesh = new THREE.Mesh( gg, poleMat );
        mesh.position.y = - 250;
        mesh.position.x = - 125;
        mesh.receiveShadow = true;
        mesh.castShadow = true;
        scene.add( mesh );

        // renderer

        renderer = new THREE.WebGLRenderer( { antialias: true } );
        renderer.setPixelRatio( window.devicePixelRatio );
        renderer.setSize( window.innerWidth, window.innerHeight );

        container.appendChild( renderer.domElement );

        renderer.gammaInput = true;
        renderer.gammaOutput = true;

        renderer.shadowMap.enabled = true;

        // controls
        var controls = new THREE.OrbitControls( camera, renderer.domElement );
        controls.maxPolarAngle = Math.PI * 0.5;
        controls.minDistance = 1000;
        controls.maxDistance = 5000;

        // performance monitor

        stats = new Stats();
        container.appendChild( stats.dom );

        //

        window.addEventListener( 'resize', onWindowResize, false );

        sphere.visible = ! true;

    }

    //

    function onWindowResize() {

        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();

        renderer.setSize( window.innerWidth, window.innerHeight );

    }

    //

    function animate() {

        requestAnimationFrame( animate );

        var time = Date.now();

        var windStrength = Math.cos( time / 7000 ) * 20 + 40;

        windForce.set( Math.sin( time / 2000 ), Math.cos( time / 3000 ), Math.sin( time / 1000 ) )
        windForce.normalize()
        windForce.multiplyScalar( windStrength );

        simulate( time );
        render();
        stats.update();

    }

    function render() {

        var p = cloth.particles;

        for ( var i = 0, il = p.length; i < il; i ++ ) {

            clothGeometry.vertices[ i ].copy( p[ i ].position );

        }

        clothGeometry.verticesNeedUpdate = true;

        clothGeometry.computeFaceNormals();
        clothGeometry.computeVertexNormals();

        sphere.position.copy( ballPosition );

        renderer.render( scene, camera );

    }

</script>
</body>
</html>
