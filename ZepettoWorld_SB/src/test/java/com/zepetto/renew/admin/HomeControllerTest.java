package com.zepetto.renew.admin;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@Slf4j
@SpringBootTest
class HomeControllerTest {

    @Test
    void logbackTest() {
        log.debug("log Test!");
        log.warn("log Test!");
    }


}