package controllers;

import play.Logger;
import play.mvc.Controller;
import play.mvc.Result;

public class Application extends Controller {

    public Result index() {
        return temporaryRedirect("http://tldw.io");
    }

    public Result redirectTLDW(String uri) {
        String vParameter = request().getQueryString("v");
        Logger.debug("IPAddress: " + request().remoteAddress());
        Logger.debug("URL: " + request().uri());
        Logger.debug("VideoId: " + vParameter);
        return temporaryRedirect("http://tldw.io/" + uri + "?v=" + vParameter);
    }

}
