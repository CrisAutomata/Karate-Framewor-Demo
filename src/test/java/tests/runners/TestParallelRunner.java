package tests.runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class TestParallelRunner {
  @Test
  void testParallel() {
    Results results = Runner.path("src/test/java/tests/feature")
        //.outputCucumberJson(true)
        .parallel(5);
    assertEquals(0, results.getFailCount(), results.getErrorMessages());
    System.out.println(
        "-------------------------------running the parallel--------------------------------------------"
    );
  }
}
