time=`date +%y-%m-%d-%H:%M`
TOKEN=XXX    #TG机器人token
chat_ID=XXX               #用户ID或频道、群ID
message_text="您于$time有新的消息推送"              #要发送的信息
MODE='HTML'             #解析模式，可选HTML或Markdown
URL="https://api.telegram.org/bot${TOKEN}/sendMessage"          #api接口
#测试1：终端有日志
#curl -s -X POST $URL -d chat_id=${chat_ID}  -d parse_mode=${MODE} -d text="${message_text}"    
#测试2：终端无日志
curl -s -o /dev/null -X POST $URL -d chat_id=${chat_ID} -d text="${message_text}"
