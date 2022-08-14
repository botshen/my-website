# react-18

## 升级到 react-18 版本

```shell 
yarn upgrade react react-dom --latest
```

## 更新内容

### 使用了 `createRoot`

```javascript
import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
    <React.StrictMode>
        <App/>
    </React.StrictMode>
);

reportWebVitals();
```

### 严格模式

`React.StrictMode`包裹了`App`组件

不允许使用react已经废弃的用法和即将废弃的用法，来保持react的最佳实践

使副作用双重打印，安装`react-devtools`可以发现哪些是严格模式打印的日志

