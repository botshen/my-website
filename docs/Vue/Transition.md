# vue 路由动画

## vue3 + tsx 路由动画

- 使用 css-modules 和 vue-animate 实现路由动画

```tsx

import {defineComponent, ref, Transition, VNode, watchEffect} from 'vue';
import {RouteLocationNormalizedLoaded, RouterView} from 'vue-router';
import s from './Welcome.module.scss'

export const Welcome = defineComponent({
    setup: (props, context) => {
        const main = ref<HTMLElement | null>(null)
        watchEffect(() => {
            console.log(swiping.value, direction.value)
        })
        return () => <div class={s.wrapper}>
            <header>
                <svg>
                    <use xlinkHref='#mangosteen'></use>
                </svg>
                <h1>山竹记账</h1>
            </header>
            <main class={s.main} ref={main}>
                //highlight-start
                <RouterView name="main">
                    {({Component: X, route: R}:
                          { Component: VNode, route: RouteLocationNormalizedLoaded }) =>
                        <Transition enterFromClass={s.slide_fade_enter_from}
                                    enterActiveClass={s.slide_fade_enter_active}
                                    leaveToClass={s.slide_fade_leave_to}
                                    leaveActiveClass={s.slide_fade_leave_active}>
                            {X}
                        </Transition>
                    }
                </RouterView>
                //highlight-end
            </main>
            <footer>
                <RouterView name="footer"/>
            </footer>
        </div>
    }
})
```
