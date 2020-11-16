#!/bin/sh
nohup python3 parlai/chat_service/services/browser_chat/run.py --config-path parlai/chat_service/tasks/chatbot/config.yml --port 8000 &
sleep 50
python3 parlai/chat_service/services/browser_chat/client.py --port 8000 --host 0.0.0.0
