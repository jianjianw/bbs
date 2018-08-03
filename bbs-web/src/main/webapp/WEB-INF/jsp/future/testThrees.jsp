<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>three.js webgl - lights - hemisphere light</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <style>
        body {
            background-color: #fff;
            color: #111;
            margin: 0px;
            overflow: hidden;
            font-family: Monospace;
            font-size: 13px;
        }

        #info {
            position: absolute;
            top: 0px; width: 100%;
            padding: 5px;
            text-align: center;
        }

        a {
            color: #0080ff;
            text-decoration: none;
        }

        a:hover {
            color: #f00;
        }

        #footer { width: 100%; margin: 2em auto; text-align: center; position: absolute; bottom: 0 }
        strong { color: red }
    </style>
</head>
<body>

<div id="container"></div>
<div id="info">
    flamingo by mirada from rome---看不到前路就不要停下来
</div>
<div id="footer">
    press <strong>h</strong> to toggle hemisphere light, <strong>d</strong> to toggle directional light
</div>

<script src="${APP_PATH}/script/three.js"></script>

<script src="${APP_PATH}/script/Detector.js"></script>
<script src="${APP_PATH}/script/stats.min.js"></script>

<script type="x-shader/x-vertex" id="vertexShader">

			varying vec3 vWorldPosition;

			void main() {

				vec4 worldPosition = modelMatrix * vec4( position, 1.0 );
				vWorldPosition = worldPosition.xyz;

				gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );

			}

		</script>

<script type="x-shader/x-fragment" id="fragmentShader">

			uniform vec3 topColor;
			uniform vec3 bottomColor;
			uniform float offset;
			uniform float exponent;

			varying vec3 vWorldPosition;

			void main() {

				float h = normalize( vWorldPosition + offset ).y;
				gl_FragColor = vec4( mix( bottomColor, topColor, max( pow( max( h , 0.0), exponent ), 0.0 ) ), 1.0 );

			}

		</script>

<script>

    if ( ! Detector.webgl ) Detector.addGetWebGLMessage();

    var camera, scene, renderer, dirLight, dirLightHeper, hemiLight, hemiLightHelper;
    var mixers = [];
    var stats;

    var clock = new THREE.Clock();

    init();
    animate();

    function init() {

        var container = document.getElementById( 'container' );

        camera = new THREE.PerspectiveCamera( 30, window.innerWidth / window.innerHeight, 1, 5000 );
        camera.position.set( 0, 0, 250 );

        scene = new THREE.Scene();
        scene.background = new THREE.Color().setHSL( 0.6, 0, 1 );
        scene.fog = new THREE.Fog( scene.background, 1, 5000 );

        // LIGHTS

        hemiLight = new THREE.HemisphereLight( 0xffffff, 0xffffff, 0.6 );
        hemiLight.color.setHSL( 0.6, 1, 0.6 );
        hemiLight.groundColor.setHSL( 0.095, 1, 0.75 );
        hemiLight.position.set( 0, 50, 0 );
        scene.add( hemiLight );

        hemiLightHelper = new THREE.HemisphereLightHelper( hemiLight, 10 );
        scene.add( hemiLightHelper );

        //

        dirLight = new THREE.DirectionalLight( 0xffffff, 1 );
        dirLight.color.setHSL( 0.1, 1, 0.95 );
        dirLight.position.set( -1, 1.75, 1 );
        dirLight.position.multiplyScalar( 30 );
        scene.add( dirLight );

        dirLight.castShadow = true;

        dirLight.shadow.mapSize.width = 2048;
        dirLight.shadow.mapSize.height = 2048;

        var d = 50;

        dirLight.shadow.camera.left = -d;
        dirLight.shadow.camera.right = d;
        dirLight.shadow.camera.top = d;
        dirLight.shadow.camera.bottom = -d;

        dirLight.shadow.camera.far = 3500;
        dirLight.shadow.bias = -0.0001;

        dirLightHeper = new THREE.DirectionalLightHelper( dirLight, 10 );
        scene.add( dirLightHeper );

        // GROUND

        var groundGeo = new THREE.PlaneBufferGeometry( 10000, 10000 );
        var groundMat = new THREE.MeshPhongMaterial( { color: 0xffffff, specular: 0x050505 } );
        groundMat.color.setHSL( 0.095, 1, 0.75 );

        var ground = new THREE.Mesh( groundGeo, groundMat );
        ground.rotation.x = -Math.PI/2;
        ground.position.y = -33;
        scene.add( ground );

        ground.receiveShadow = true;

        // SKYDOME

        var vertexShader = document.getElementById( 'vertexShader' ).textContent;
        var fragmentShader = document.getElementById( 'fragmentShader' ).textContent;
        var uniforms = {
            topColor:    { value: new THREE.Color( 0x0077ff ) },
            bottomColor: { value: new THREE.Color( 0xffffff ) },
            offset:      { value: 33 },
            exponent:    { value: 0.6 }
        };
        uniforms.topColor.value.copy( hemiLight.color );

        scene.fog.color.copy( uniforms.bottomColor.value );

        var skyGeo = new THREE.SphereBufferGeometry( 4000, 32, 15 );
        var skyMat = new THREE.ShaderMaterial( { vertexShader: vertexShader, fragmentShader: fragmentShader, uniforms: uniforms, side: THREE.BackSide } );

        var sky = new THREE.Mesh( skyGeo, skyMat );
        scene.add( sky );

        // MODEL

        var loader = new THREE.JSONLoader();

        loader.load( '${APP_PATH}/script/flamingo.js', function( geometry ) {

            var material = new THREE.MeshPhongMaterial( { color: 0xffffff, specular: 0xffffff, shininess: 20, morphTargets: true, vertexColors: THREE.FaceColors, flatShading: true } );
            var mesh = new THREE.Mesh( geometry, material );

            var s = 0.35;
            mesh.scale.set( s, s, s );
            mesh.position.y = 15;
            mesh.rotation.y = -1;

            mesh.castShadow = true;
            mesh.receiveShadow = true;

            scene.add( mesh );

            var mixer = new THREE.AnimationMixer( mesh );
            mixer.clipAction( geometry.animations[ 0 ] ).setDuration( 1 ).play();
            mixers.push( mixer );

        } );

        // RENDERER

        renderer = new THREE.WebGLRenderer( { antialias: true } );
        renderer.setPixelRatio( window.devicePixelRatio );
        renderer.setSize( window.innerWidth, window.innerHeight );
        container.appendChild( renderer.domElement );

        renderer.gammaInput = true;
        renderer.gammaOutput = true;

        renderer.shadowMap.enabled = true;

        // STATS

        stats = new Stats();
        container.appendChild( stats.dom );

        //

        window.addEventListener( 'resize', onWindowResize, false );
        document.addEventListener( 'keydown', onKeyDown, false );

    }

    function onWindowResize() {

        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();

        renderer.setSize( window.innerWidth, window.innerHeight );

    }

    function onKeyDown ( event ) {

        switch ( event.keyCode ) {

            case 72: // h

                hemiLight.visible = !hemiLight.visible;
                hemiLightHelper.visible = !hemiLightHelper.visible;
                break;

            case 68: // d

                dirLight.visible = !dirLight.visible;
                dirLightHeper.visible = !dirLightHeper.visible;
                break;

        }

    }

    //

    function animate() {

        requestAnimationFrame( animate );

        render();
        stats.update();

    }

    function render() {

        var delta = clock.getDelta();

        for ( var i = 0; i < mixers.length; i ++ ) {

            mixers[ i ].update( delta );

        }

        renderer.render( scene, camera );

    }

</script>
</body>
</html>
