access_token=
post_id=

if output=$(java -jar ./target/uonet2fb-0.1-SNAPSHOT.jar 2> /dev/null); then
	curl -s -i -X POST -d "message=$output" -d "access_token=$access_token" "https://graph.facebook.com/v2.7/$post_id"
else
	printf 'error %s\n' "$output"
fi