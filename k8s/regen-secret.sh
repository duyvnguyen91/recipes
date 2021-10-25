ACCOUNT=334687143702
REGION=ap-southeast-1
SECRET_NAME=aws-ecr-credentials

TOKEN=`aws ecr --region=$REGION get-authorization-token --output text --query authorizationData[].authorizationToken | base64 -d | cut -d: -f2`

#
#  Create or replace registry secret
#

kubectl delete secret --ignore-not-found $SECRET_NAME
kubectl create secret docker-registry $SECRET_NAME \
 --docker-server=https://${ACCOUNT}.dkr.ecr.${REGION}.amazonaws.com \
 --docker-username=AWS \
 --docker-password="${TOKEN}"
if [[ $? != 0 ]]; then
    echo "`date` cannot create secret"
else
    echo "`date` create secret succeed"
fi