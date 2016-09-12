aws cloudformation update-stack \
--stack-name offcourse-frontend-production \
--template-url https://s3-eu-west-1.amazonaws.com/offcourse-web-cf/template.json \
--parameter ParameterKey="Stage",ParameterValue="production" ParameterKey="HostedZone",ParameterValue="offcourse.io"
