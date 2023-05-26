package de.uniba.dsg.jaxrs;

import com.sun.net.httpserver.HttpServer;
import org.glassfish.jersey.jdkhttp.JdkHttpServerFactory;
import org.glassfish.jersey.server.ResourceConfig;
import javax.ws.rs.core.UriBuilder;


import java.net.URI;

public class Server {
    public static void main(String[] args) {

        String serverUri = System.getenv("serverUri");

        System.out.println("serverUri = " + serverUri);
//        URI baseUri = UriBuilder.fromUri(serverUri).build();
        URI baseUri = UriBuilder.fromUri(serverUri).build();

        ResourceConfig config = ResourceConfig.forApplicationClass(RestApi.class);
        HttpServer server = JdkHttpServerFactory.createHttpServer(baseUri, config);

        System.out.println("Server ready to serve your JAX-RS requests...");
    }
}
