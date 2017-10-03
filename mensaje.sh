#!/bin/bash
#!/bin/bash 
curl https://fcm.googleapis.com/fcm/send \
     -H "Content-Type: application/json" \
     -H "Authorization: key=AAAAIN8UHfc:APA91bHrX1KZTH3zwA6JmdblELwPLKfzbxzsbd9Dr_EiuE5FCbpTbAnrszwh8JzC1Y83HTMlTZfAvnsgGGa13_RDmbhbyqIbMuQ5cN61jourXJ1EDOjuATvIe95wFu4lhX7skA9aym-v" \
     -d '{ "notification": {"title": "Mensaje", "body": "Has conectado tu App", "click_action" : "https://angularfirebase.com"},"to" : "fZEB3ussSLg:APA91bGoV9RYKpXDo6GgSF8aWsGwVcIdnE9KaA1KIe2TOCxc1eQhuMI1LwsMCtr2FzrHD1YCOzOmYWTXtZuB4oFqL_MFc9NDCjk5boNUPcASiB37vpMypXCzVLK6asjohYT8Un7s9zh0"}'
