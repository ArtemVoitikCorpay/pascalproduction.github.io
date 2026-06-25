<!DOCTYPE html>                                                                                                                                                                                                                                                                                                            
  <html lang="ru">
  <head>                                                                                                                                                                                                                                                                                                                     
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Coming soon</title>                                                                                                                                                                                                                                                                                               
    <style>
      * { box-sizing: border-box; margin: 0; padding: 0; }                                                                                                                                                                                                                                                                   
                       
      body {
        min-height: 100vh;
        display: flex;                                                                                                                                                                                                                                                                                                       
        align-items: center;
        justify-content: center;                                                                                                                                                                                                                                                                                             
        font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;                                                                                                   
        color: #f0f0f0;
        text-align: center;                                                                                                                                                                                                                                                                                                  
        padding: 2rem; 
      }

      h1 {                                                                                                                                                                                                                                                                                                                   
        font-size: clamp(2rem, 6vw, 3.5rem);
        font-weight: 300;                                                                                                                                                                                                                                                                                                    
        letter-spacing: -0.02em;                            
        margin-bottom: 1rem;                                                                                                                                                                                                                                                                                                 
      }
                                                                                                                                                                                                                                                                                                                             
      p {                                                   
        color: #888;
        font-size: 1rem;
      }

      .dot {
        display: inline-block;
        width: 8px;                                                                                                                                                                                                                                                                                                          
        height: 8px;
        background: #f0f0f0;                                                                                                                                                                                                                                                                                                 
        border-radius: 50%;                                 
        margin-left: 4px;
        animation: blink 1.2s infinite;
      }                                                                                                                                                                                                                                                                                                                      
   
      @keyframes blink {                                                                                                                                                                                                                                                                                                     
        0%, 100% { opacity: 1; }                            
        50%      { opacity: 0.2; }
      }                                                                                                                                                                                                                                                                                                                      
    </style>
  </head>                                                                                                                                                                                                                                                                                                                    
  <body>                                                    
    <main>
      <h1 style="color: grey;">Coming soon<span class="dot"></span></h1>
		<img style="width: 400px; height: 150px;" src="https://tankpas.nl/wp-content/themes/tankpas/images/logo.png" class="logo" alt="Travelcard logo">
    </main>                                                                                                                                                                                                                                                                                                                  
   
    <script type='text/javascript'> 
		window.dataLayer = window.dataLayer || [];
		window.addEventListener("onEmbeddedMessagingWindowMinimized", (event) => {
			console.log('chat_closed');
			dataLayer.push({ event: "chat_closed", "conversationId": event.detail.conversationId });
		});
		window.addEventListener("onEmbeddedMessagingConversationStarted", (event) => {
			console.log('conversation_started event details === ', event.detail);
		});
		window.addEventListener("onEmbeddedMessagingWindowMaximized", (event) => {
			console.log('chat_started');
			dataLayer.push({ event: "chat_started", "conversationId": event.detail.conversationId });
		});
		window.addEventListener("onEmbeddedMessageSent", (event) => {
			if (event.detail.conversationEntry.entryType == 'Message') {
				if (event.detail.conversationEntry.senderDisplayName == 'Guest') {
					console.log('message_submitted');
					dataLayer.push({ event: "message_submitted", "conversationId": event.detail.conversationId });
				} else {
					if (event.detail.conversationEntry.entryPayload.includes('representative will follow up with you soon')) {
						console.log('chat_bot_net_lead');
						dataLayer.push({ event: "chat_bot_net_lead", "conversationId": event.detail.conversationId });
					}
						
					console.log('message_response');
					dataLayer.push({ event: "message_response", "conversationId": event.detail.conversationId });
				}
				console.log("onEmbeddedMessageSent detail: ", event.detail);
			}
		});
	function initEmbeddedMessaging() {
		try {
			embeddedservice_bootstrap.settings.language = 'en_US'; // For example, enter 'en' or 'en-US'

			embeddedservice_bootstrap.init(
				'00D9K00000Y0t91',
				'Pascal_AI',
				'https://fleetcor-eu--part.sandbox.my.site.com/ESWPascal1779361513624',
				{
					scrt2URL: 'https://fleetcor-eu--part.sandbox.my.salesforce-scrt.com'
				}
			);
		} catch (err) {
			console.error('Error loading Embedded Messaging: ', err);
		}
	};
</script>
<script type='text/javascript' src='https://fleetcor-eu--part.sandbox.my.site.com/ESWPascal1779361513624/assets/js/bootstrap.min.js' onload='initEmbeddedMessaging()'></script>
                                                                                                                                                                                                                                                                     
  </body>
  </html>
