package copin

import grails.test.*

class HelloWorldControllerTests extends ControllerUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSomething() {

    }
	
	void testRenderHomePage() {
		controller.index()
		assertEquals "Hello World", controller.response.contentAsString
	 }
}
