---
sidebar_position: 1
---

# react-router-v6

我们习惯将路由的部分抽离到一个config目录下，单独维护一个路由表

在routes.tsx中维护路由表：

![image](https://cdn.staticaly.com/gh/botshen/image-hosting@master/20220503/image.42eavl3l1xa0.webp)

```ts title="routes.tsx"
import { Navigate } from "react-router-dom";
import { Welcome } from "../views/Welcome";
import { First } from "../components/welcome/First";
import { Second } from "../components/welcome/Second";
import { Third } from "../components/welcome/Third";
import { Forth } from "../components/welcome/Forth";

export const routes = [
  {
    path: "/welcome",
    element: <Welcome />,
    children: [
      { path: "/welcome/1", element: <First /> },
      { path: "/welcome/2", element: <Second /> },
      { path: "/welcome/3", element: <Third /> },
      { path: "/welcome/4", element: <Forth /> }
    ]
  },
  {
    path: "/",
    element: <Navigate to="/welcome" />
  }
];
```

从代码中不难看出，如何定义路径与组件的对应关系

- `Navigate`表示的是重定向路由

- `children`表示嵌套路由

## 使用路由表

```tsx title="App.tsx"q
import { useRoutes } from "react-router-dom";
import { routes } from "./config/routes";

export default function App() {
  const element = useRoutes(routes);
  console.log(element);
  return (
      <div className="App">
        {element}
      </div>
  );
}
```

在`App.tsx`中使用路由表，用到了v6的`useRoutes`函数

需要注意的是在App外面要包一层`Router`

```tsx title="main.tsx"
import { createRoot } from "react-dom/client";
import "./index.css";
import "tailwindcss/tailwind.css";
import App from "./App";
import { BrowserRouter as Router } from "react-router-dom";


const container = document.getElementById("root");
if (container) {
  const root = createRoot(container);
  root.render(
    <Router>
      <App />
    </Router>
  );
}
```
