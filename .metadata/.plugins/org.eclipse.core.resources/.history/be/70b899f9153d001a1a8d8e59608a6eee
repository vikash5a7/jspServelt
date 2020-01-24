package com.bridgeLabz.DesignPattern.Proxy;

public class WebPageProxy implements WebPage {
	private WebPage webpage;

	public WebPageProxy() {
		webpage = new WebPageImplement();
	}

	@Override
	public void render(String url) throws Exception {
		if (url.equalsIgnoreCase("www.stackoverFlow.com"));
		 else if (url.equalsIgnoreCase("www.youtube.com")) {
			throw new Exception(url + "is Blocked by ISP: " + url);
		}

		else {
			webpage.render(url);
		}
	}

}
