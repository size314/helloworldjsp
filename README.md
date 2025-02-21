# helloworldjsp

`helloworldjsp` is a [JavaServer Pages](https://openliberty.io/docs/latest/reference/feature/jsp-2.3.html) application.

## Download or Run

Download `helloworldjsp.war` from <https://github.com/IBM/helloworldjsp/releases/latest>

This application requires at least the following features to be installed:

```
  <featureManager>
    <feature>jsp-2.3</feature>
  <featureManager>
```

Add the application to the `dropins` folder and then access at <http://localhost:9080/helloworldjsp/>.

## Development

1. Java >= 8 is required on your `PATH`; for example, [IBM Semeru Runtimes](https://developer.ibm.com/languages/java/semeru-runtimes/downloads/)
1. Build the WAR file:
   ```
   mvn clean install
   ```
    1. The file should be under `target/helloworldjsp.war`
1. Or build and run Liberty:
   ```
   mvn clean install liberty:dev
   ```
    1. Wait for the message, "server is ready to run a smarter planet". For example:
       ```
       CWWKF0011I: The helloworldjspServer server is ready to run a smarter planet. The helloworldjspServer server started in 1.023 seconds.
       ```
    1. Open your browser to the HTTP or HTTPS page:
        * <http://localhost:9080/>
        * <https://localhost:9443/>

### Eclipse

To develop in Eclipse, either install the [Liberty Tools plugin](https://marketplace.eclipse.org/content/liberty-tools), or:

1. Install the Eclipse flavor: [Eclipse IDE for Enterprise Java and Web Developers](https://www.eclipse.org/downloads/packages/)
1. Start Eclipse and click File } Import... } Maven } Existing Maven Projects
