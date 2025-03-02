// Get Polylux from the official package repository
#import "@preview/polylux:0.3.1": *
#import "@preview/fletcher:0.5.1" as fletcher: diagram, node, edge
#import fletcher.shapes: diamond

// Make the paper dimensions fit for a presentation and the text larger
#set page(paper: "presentation-16-9")
#set footnote.entry(clearance: 0.1em, gap: 0.2em)
#show heading:set align(start + top)
#show heading: set text(size: 24pt)
#set align(horizon)

#let lb = linebreak(justify: false)
#let refs(body) = {
  set text(size: 8pt)
  align(right, body)
}

#set list(marker: ([•], [◦], [🗸]))
#let list-counter = counter("list")

#show list: set text(12pt)
#show list: it => {
  list-counter.step()

  context {
    set text(20pt) if list-counter.get().first() == 1
    set text(16pt) if list-counter.get().first() == 2
    set text(12pt) if list-counter.get().first() >= 3
    it
  }
  list-counter.update(i => i - 1)
}

// for main text
#set text(
    lang: "ja",  // 英語しか使わない文書では"en"とする（もしくは指定しない）
    font: ("Calibri", "Noto Serif CJK JP"),  
    // font: (日本語文字を含まないフォント, 日本語文字を含むフォント),  となっている
)

// Use #polylux-slide to create a slide and style it using your favourite Typst functions
#polylux-slide[

  = FMFとは


  #align(horizon + center)[
    
 #text(size: 32pt)[
    *Nozomi Niimi* #lb
    *2025/2/4*
  ]

  ]
]

#polylux-slide[
  = 症例
  
  - 26歳女性
  - 当院で発熱・汎発性腹膜炎で入院
  - その後1ヶ月半周期で2回同様の入院歴あり
  - これはFMFでは？

]


#polylux-slide[
  = FMFとは
  
  - 自然免疫による自己炎症性疾患の1つ
  - 成人発症でも良い数少ない疾患(それ以外だとPPFAくらい)
  - 家族性地中海熱は*常染色体劣性（潜性）遺伝形式*で遺伝
  - *自己炎症性疾患* vs. #strike[自己免疫疾患]
  ]

#polylux-slide[
  = 自己免疫疾患
  
  #figure(image("figures/autoinflammation.png", height: 45%))
  - 好中球による炎症反応
    - 抗原暴露によるリンパ球による獲得免疫ではない
  - PAMs, DAMPsの刺激から始まる
  - 成人発症でも良い数少ない疾患(他にはAOSD, TRAPS, PPFA, VEXAS症候群)
  #refs[高岸勝繁(2024).ホスピタリストのための内科診療フローチャート #lb --専門的対応が求められる疾患の診療の流れとエビデンス 第3版. シーニュ]

  ]

#polylux-slide[
  = 膠原病の考え方

  #figure(image("figures/jikoensho_jikomenneki.jpeg", height: 50%))

  - 自己炎症 vs. 自己免疫で大きく分かれる
    - 自己免疫はリンパ球に、自己炎症は好中球によって生じる

]

#polylux-slide[
  = 自己免疫疾患と自己炎症性疾患


  #side-by-side(gutter: 0mm, columns: (1.2fr, 1fr))[
    - 自己免疫も自己炎症もスペクトラム
  - 境界領域の疾患が存在する
    - 簡単にいうとコルヒチンが効く疾患は全部自己炎症寄り
      + 再発性心外膜炎
      + 成人Still病
      + ベーチェット病
      + SpA
      + 壊疽性膿皮症
  ][
     #figure(image("figures/jikoensho_spect.jpeg", height: 50%))
  ] 

  
  
   ]


#polylux-slide[
  = FMFの疫学
  
  - トルコ人に多い(シルクロード)
  - 2009年の研究だと日本人で約500人で男女差はない
#refs[https://www.nanbyou.or.jp/entry/4447]

  - 潜在的にはもっとたくさんいると思われている


  ]

  #polylux-slide[
  = FMFの症状

  - 中核症状として、高熱が半日〜3日間持続
  - ある程度決まった間隔(4週間が最多だが個人差あり)での発作
    - ストレスや感染症、月経などに影響される。期間の長さは個人差がある
  - 発熱以外に複数の症状がある
    + *腹痛*
    + 関節炎
    + 胸膜炎
    + 筋痛
    + 皮膚症状

#refs[Curr Opin Rheumatol. 2016;28(5):523-529.]

  ]


  #polylux-slide[
  = よくわからない！


   #figure(image("figures/fmf_symp_jp.jpeg", height: 50%))

  - 高熱が半日〜3日間持続
  - ある程度決まった間隔(4週間が最多だが個人差あり)での発作
    - ストレスや感染症、月経などに影響される。期間の長さは個人差がある
  - 発作間は症状がないのが特徴
  - 急性腹症、胸膜炎などの漿膜炎や関節炎などが特徴的


  ]

    #polylux-slide[
  = FMFを一言で言うなら

  #align(center)[#text(size: 28pt)[イメージは]#text(size: 28pt, fill: red)[*定期的な発熱 + 繰り返す虫垂炎*]]

  ]


  #polylux-slide[
  = FMFの鑑別診断
  
  - SLEなどの自己免疫性疾患
  - IgA血管炎などの血管炎の発作
  - IBDのような局所的な自己免疫性疾患
  - Porphyriaなどの代謝性疾患
  - 遺伝性血管神経性浮腫などの急性腹症の希少疾患

  ]

  #polylux-slide[
  = FMFの診断
  
  #figure(image("figures/fmf_diagnosis_jp.jpeg", height: 50%))

  - Tel-Hashomer基準は特異度が高すぎると言われている
  - 日本だと厚生労働省が別個に定めている

  ]

  #polylux-slide[
  = FMFの診断～日本の事情
  
  - 日本人は海外症例と比べて患者背景が大きく異なる
    - 発症年齢が高い
    - 腹膜炎症状が少ない
    - アミロイドーシス合併が少ない
  - 日本人のFMFのうち非典型例とされるのが4割ほどいるとされる

  ]

  #polylux-slide[
  = FMFの診断は簡単？

  - 典型例は知識があれば診断は簡単
  - 一方で、基準を満たさない、"FMF崩れ"みたいな症状が多いと言われている
  - 大まかなゲシュタルトとして若年者の #lb 「繰り返す発熱と腹痛(+高CRP)」を忘れない

  ]

  #polylux-slide[
  = FMFの診断
  
  - 遺伝子検査は必須ではない
    - 遺伝子異常があっても発症しない事も多い(浸透率が高くない)
    - 逆に遺伝子異常がない人もFMFを発症することもある
  - 常に*臨床診断*
  - 特に重要なのは*コルヒチンの反応性* 

  ]


  
  #polylux-slide[
  = FMFの診断～遺伝子検査
  
  - 16番染色体上の16p 13.3領域のMEFV遺伝子が関連遺伝子と知られている
  - 関連がある遺伝子異常は300以上あると言われている
  - 日本人のデータだと
  - 非典型例だとMEFV遺伝子エクソン10の変異は少ない
    + エクソン1(E84K)
    + エクソン2(E148Q，L110P-E148Q)
    + エクソン3(P369S-R408Q)
    + エクソン5(S503C)
  - 遺伝子検査の判定は難しい

  ]

  #polylux-slide[
  = FMFの診断～プラクティカルアプローチ
  
  #figure(image("figures/fmf_flowchart.png", height: 90%))

  ]

  #polylux-slide[
  = 遺伝子検査の方法

  #side-by-side()[

  - 東京女子医大学に依頼
  - 東北大学病院 血液内科・ #lb リウマチ膠原病内科
  - 筑波大学医学医療系小児科
  - 東京医科歯科大学膠原病・リウマチ #lb 先端治療センター
  - 東京女子医科大学膠原病リウマチ #lb 痛風センター
  - 国立成育医療研究センター免疫科
  
  ][
    - 信州大学医学部附属病院脳神経内科／ #lb リウマチ・膠原病内科
    - 岐阜大学医学部附属病院小児科
    - 藤田医科大学病院臨床遺伝科
    - 兵庫医科大学病院アレルギー・ #lb リウマチ内科
    - 川崎医科大学附属病院リウマチ・ #lb 膠原病科
    - 九州大学医学部 小児科
    - 久留米大学医学部 小児科学教室
  ]
   

#refs[https://genetics.qlife.jp/diseases/familial-mediterranean-fever]

  ]



  #polylux-slide[
  = FMFの治療

  - QOLの改善とAmyloidosis予防が目的
  - コルヒチンは90%以上で有用
  - コルヒチンが向こうな場合はIL-1β阻害薬を使う

  ]

  #polylux-slide[
  = Take home message

  - 若年女性の繰り返す発熱と腹痛はFMFを疑う
  - 診断は臨床第一、コルヒチンの診断的治療をためらわない！
    - 家族歴がなくても良い！
    - 遺伝子異常がなくても良い！

  ]






