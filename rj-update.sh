aws cloudformation update-stack \
--stack-name offcourse-frontend-production \
--template-body file:///Users/Robert-Jan/Desktop/offcourse-frontend-cf/template.json \
--parameter ParameterKey="Stage",ParameterValue="production" ParameterKey="HostedZone",ParameterValue="offcourse.io"
