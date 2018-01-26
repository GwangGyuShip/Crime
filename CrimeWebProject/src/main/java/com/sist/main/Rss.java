package com.sist.main;
/*
 * <rss>
 * 	<channel>
 * 		<item>
 * 			<title>aaa</title>
 * 		</item>
 * 	</channel
 * </rss>
 */

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Rss {
	private Channel channel = new Channel();

	public Channel getChannel() {
		return channel;
	}

	@XmlElement
	public void setChannel(Channel channel) {
		this.channel = channel;
	}

}
