package cn.saymyname.scheduled;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;


@Component
@Lazy(false)
@EnableScheduling
public class ScheduledJob {

    private static Logger logger = LoggerFactory.getLogger(ScheduledJob.class);


    @Scheduled(cron = "0 * * * * *")
    public void job1() {
        System.out.println("任务进行中。。。");
        logger.info("任务进行中。。。");
    }
}
