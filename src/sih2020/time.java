package sih2020;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class time implements ServletContextListener {

    private ScheduledExecutorService scheduler;

    @Override
    public void contextInitialized(ServletContextEvent event) {
        scheduler = Executors.newSingleThreadScheduledExecutor();
//        scheduler.scheduleAtFixedRate(new SomeDailyJob(), 0, 1, TimeUnit.DAYS);
//        scheduler.scheduleAtFixedRate(new SomeHourlyJob(), 0, 1, TimeUnit.HOURS);
        scheduler.scheduleAtFixedRate(new SomeQuarterlyJob(), 0, 20, TimeUnit.MINUTES);
//        scheduler.scheduleAtFixedRate(new SomeFiveSecondelyJob(), 0, 5, TimeUnit.SECONDS);
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        scheduler.shutdownNow();
    }

}