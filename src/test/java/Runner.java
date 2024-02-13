import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/java/Features",
        glue = "test",
        tags = "@Test",
        plugin = {"pretty", "json:target/cucumber-reports.json"}
)

public class Runner {
}
