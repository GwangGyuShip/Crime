package com.sist.newsManager;

import javax.xml.bind.annotation.XmlRootElement;

import com.sun.xml.txw2.annotation.XmlElement;

/*
 * 
 * 	<rss>
 * 		<channel>
 * 			<item>
 * 				<title></title>
 * 			</item>
 * 		</channel>
 * 	</rss>
 */
@XmlRootElement
public class Rss {
	private Channel channel= new Channel();

	public Channel getChannel() {
		return channel;
	}
	
	@XmlElement
	public void setChannel(Channel channel) {
		this.channel = channel;
	}
}