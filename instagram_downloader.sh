echo "Enter the video URL:"
read -r videoUrl

echo "Enter the audio URL:"
read -r audioUrl

output_filename=$(echo "$videoUrl" | sed -n 's/.*\/\([^?]*\).mp4.*/\1/p')

ffmpeg -i "$videoUrl" -i "$audioUrl" -c:v copy -c:a aac -strict experimental "$output_filename".mp4