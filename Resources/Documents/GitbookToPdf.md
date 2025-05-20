# 将 Gitbook 转成 PDF

打开该地址 [generate-pdf](https://try.playwright.tech/?e=generate-pdf)， 替换 gitbook 的地址，点击运行即可

```js
// @ts-check
const playwright = require('playwright');

(async () => {
  const browser = await playwright.chromium.launch();
  const context = await browser.newContext();
  const page = await context.newPage();
  await page.goto('https://faisalmemon.github.io/ios-crash-dump-analysis-book/zh/');
  await page.pdf({ path: `document.pdf` });
  await browser.close();
})();
```