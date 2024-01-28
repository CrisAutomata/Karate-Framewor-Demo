package tests.runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestSequenceRunner {
  @Test
  void testParallel() {
    Results results = Runner.path("src/test/java/tests/feature")
        //.outputCucumberJson(true)
        .parallel(1);
    assertEquals(0, results.getFailCount(), results.getErrorMessages());
    System.out.println(
        "-------------------------------running the sequence--------------------------------------------"
    );

  }
}
