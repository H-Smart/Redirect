aws s3api list-objects-v2 \
  --bucket ai-sensor-artist \
  --prefix gallery/ \
  --query "Contents[].join('', ['https://ai-sensor-artist.s3.amazonaws.com/', Key])" \
  --output json > manifest.json
aws s3 cp manifest.json s3://ai-sensor-artist/gallery/manifest.json

