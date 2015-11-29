package controllers;

import play.mvc.Controller;
import play.mvc.Result;

public class Application extends Controller {

    public Result index() {
        return temporaryRedirect("http://tldw.io");
    }

    public Result redirectTLDW(String uri) {
        return temporaryRedirect("http://tldw.io/" + uri);
    }

}
