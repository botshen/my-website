# 手写 Ajax

AJAX = Asynchronous JavaScript and XML（异步的 JavaScript 和 XML）

```js
const ajax = (method, url, data, success, fail) => {
  var request = new XMLHttpRequest()
  request.open(method, url);
  // onreadystatechange 准备状态变化
  request.onreadystatechange = function () {
    // 表示下载完成
    if(request.readyState === 4) {
      // request.status === 304 没有变更
      if(request.status >= 200 && request.status < 300 || request.status === 304) {
        success(request)
      }else{
        fail(request)
      }
    }
  };
  request.send();
}
```
