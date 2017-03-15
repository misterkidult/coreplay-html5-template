# coreplay html5 template

coreplay html5 template 是基於 HTML / CSS / JS : Pug / Sass / Coffeescript 的工具模版，目的是為了將常用的 html 功能作成模組，加速作業流程，同時最大化修改的彈性。

## HTML

HTML Markup部份， 參考了 MDL 和 framework 7

* .app 參考 MDL 將單一頁面視為一個 APP，拆出主要元件
    * .app__loading 讀取畫面
    * .app__drawer 抽屜選單 或 抽屜廣告
    * .app__header
    * .app__content 主要內容和 scroll 放在這一元件中
    * .app__footer
    * .app__modal Alert Popup 或 其他覆蓋層
* body 本身盡量不作捲動
* 特殊畫面切換或交疊時，參考 framework7 以 view 和 page 來區分階層。view 是 page 的集合。
* 結合 bootstrap4 處理傳統網頁內容的排版，及特殊組件的設定，如 nav tab table modal

## CSS

在寫 CSS 之前，掌握以下幾個原則：
預測 Predictable / 複用 Reusable / 維護 Maintainable / 延展 Scalable
結構和外觀分離 Separate Structure and Skin
容器和內容分離 Separate Container and Content

命名原則 BEM 模式：物件—形容__成分
根據 SASS 架構參考 OOCSS / SMACSS，將 CSS 分成：
* Base
    * css reset
    * global 最基本的樣式
    * vars 可能會用到的變數，如顏色等
    * font and @fontface 的設定
    * typo
* Layout
    * app
    * grid RWD 的格線配置
    * layout 其他排版
* Module
    * Component
    * nav table modal 等物件的管理
    * css 動畫等
* State
    * 狀態的管理，如 ie 時的變化，或是單元切換的變化，如 .is-ie & 或 .is-open-drawer &
* Theme
    * 特殊版面變化的設定，一般使用在相同架構的網站，需快速複製時使用

Responsive Web Design 的部份，我們基本上不分拆手機平版的 CSS，取而代之的是將手機平版的變化直接寫進 Component 或 Layout 裡。
這樣的設計是基於一個理由：同一個 Component，在畫面中的功能相同，在手機平版電腦中，除非瀏覽形式有變，不然應該要有基本的模樣。所以切版時就是先定義出基本的樣式，再根據裝置去調整細節（類似 state）。

## Javascript (Base on jQuery )

其他主要使用的 js：
* jQuery
* PACE 計算 Loading
* Swiper 水平，且較複雜的頁面單元切換，如 Event Site
* fullpage 直式，相對單純的頁面單元切換，如 Landing Page
* bootstrap4 處理傳統網頁內容
* BrowserDetect
* mobile-detect

視專案需求加入
* ga tracking
* tweenmax
* youtube
* google map 等 ….

自己寫的 JS : global.js
* domready
* timeline 處理動畫
* 自己寫的工具，或其他工作階段

## 2017 之後：

* 開始使用 Flex 做為 CSS 排版的主軸，瀏覽器需求至少需 ie11 以上
* 和 Compass 分手，擁抱 libsass，Sprite CSS 另尋處理方案
* 追蹤最新的前端變化，持續更新中

加速作業流程，同時最大化修改的彈性，以快速應用在各類專案中！
如有任何問題，歡迎與作者討論：
https://www.facebook.com/misterkidult