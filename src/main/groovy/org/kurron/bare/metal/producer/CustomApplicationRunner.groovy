package org.kurron.bare.metal.producer

import groovy.util.logging.Slf4j
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.ApplicationArguments
import org.springframework.boot.ApplicationRunner
import org.springframework.context.ConfigurableApplicationContext

import java.time.ZoneId
import java.time.ZonedDateTime

/**
 * Handles command-line arguments.
 */
@Slf4j
class CustomApplicationRunner implements ApplicationRunner {

    @Autowired
    private ConfigurableApplicationContext theContext

    @Override
    void run(ApplicationArguments arguments) {

        def now = ZonedDateTime.now( ZoneId.of( 'UTC' ) )
        log.info( 'The current date and time is {}', now )
        theContext.close()
    }
}
