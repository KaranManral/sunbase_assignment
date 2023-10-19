package com.sunbase.asignment;

import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.client.HttpClientErrorException.BadRequest;
import org.springframework.web.client.HttpClientErrorException.NotFound;
import org.springframework.web.client.HttpClientErrorException.Unauthorized;
import org.springframework.web.client.HttpServerErrorException.InternalServerError;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@RestController
public class ProxyController extends ResponseEntityExceptionHandler {

    private final RestTemplate restTemplate;

    public ProxyController(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @GetMapping("/api/proxy")
    public ResponseEntity<String> handleGetRequest(@RequestParam("url") String url, @RequestParam("cmd") String cmd,
            @RequestHeader HttpHeaders headers) {
        if (cmd != null)
            if (!cmd.equals(""))
                url += "?cmd=" + cmd;
        return proxyRequest(url, HttpMethod.GET, null, headers);
    }

    @PostMapping("/api/proxy")
    public ResponseEntity<String> handlePostRequest(@RequestParam("url") String url,
            @RequestParam("cmd") String cmd,
            @RequestParam("uuid") String uuid,
            @RequestBody(required = false) String requestBody,
            @RequestHeader HttpHeaders headers) {
        if (cmd != null)
            if (!cmd.equals(""))
                url += "?cmd=" + cmd;
        if (uuid != null)
            if (!uuid.equals(""))
                url += "&uuid=" + uuid;
        return proxyRequest(url, HttpMethod.POST, requestBody, headers);
    }

    private ResponseEntity<String> proxyRequest(String url, HttpMethod method, String requestBody,
            HttpHeaders headers) {
        HttpHeaders httpHeaders = new HttpHeaders();
        if (headers != null) {
            httpHeaders.putAll(headers);
        }

        HttpEntity<String> httpEntity = new HttpEntity<>(requestBody, httpHeaders);
        ResponseEntity<String> responseEntity = restTemplate.exchange(url, method, httpEntity, String.class);
        return ResponseEntity.status(responseEntity.getStatusCode()).body(responseEntity.getBody());
    }

    @ExceptionHandler(InternalServerError.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ResponseEntity<String> handleInternalServerError(InternalServerError ex) {
        return new ResponseEntity<>("", HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(BadRequest.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResponseEntity<String> handleBadRequestError(BadRequest ex) {
        return new ResponseEntity<>("", HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(Unauthorized.class)
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public ResponseEntity<String> handleUnauthorizedError(Unauthorized ex) {
        return new ResponseEntity<>("", HttpStatus.UNAUTHORIZED);
    }

    @ExceptionHandler(NotFound.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseEntity<String> handleNotFoundError(NotFound ex) {
        return new ResponseEntity<>("", HttpStatus.NOT_FOUND);
    }
}
