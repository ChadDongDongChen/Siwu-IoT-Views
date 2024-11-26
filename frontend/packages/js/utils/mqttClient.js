// mqttClient.js
import mqtt from 'mqtt';

class MqttClient {
  constructor(brokerUrl, options) {
    this.brokerUrl = brokerUrl || '';
    this.clientId = options.clientId || "SW-VIEWS" + new Date().getTime();
    this.username = options.username || 'admin';
    this.password = options.password || '123456';
    this.client = null;
  }

  // 连接 MQTT broker
  connect() {
    this.client = mqtt.connect(this.brokerUrl, {
      clientId: this.clientId,
      username: this.username,
      password: this.password
    });

    this.client.on('connect', () => {
      console.log('mqtt 已经连接成功');
    });

    this.client.on('reconnect', () => {
      console.log("mqtt reconnect");
    });

    this.client.on('offline', () => {
      console.log("mqtt offline");
    });

    this.client.on('error', (error) => {
      console.log("mqtt error");
      console.log(error);
    });
  }

  // 订阅某个主题
  subscribe(topic, callback) {
    if (this.client) {
      this.client.subscribe(topic, (err) => {
        if (!err) {
          console.log(`mqtt 订阅主题 ${topic} 成功`);
        } else {
          console.log(`mqtt 订阅主题 ${topic} 失败`);
        }
      });

      this.client.on('message', (topic, message) => {
        console.log(`mqtt 收到来自 ${topic} 的消息`);
        callback(topic, message);
      });
    } else {
      console.error('MQTT client is not connected');
    }
  }

  // 断开连接
  disconnect() {
    if (this.client) {
      this.client.end();
      console.log('mqtt 连接已断开');
    }
  }
}

export default MqttClient;
