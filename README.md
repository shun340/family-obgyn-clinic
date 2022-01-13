# ファミリー産婦人科クリニック

## サイト概要

ファミリー産婦人科クリニックという架空のクリニックの予約サイトです。<br>
予約する際、あらかじめ相談内容を書き込んでもらうことにより、<br>
妊婦・患者さんが医師に相談しづらいという状況を改善します。<br><br>
相談内容は医師以外が閲覧できないよう最大限プライバシーに配慮されています。<br>
管理者は医師、看護師、事務スタッフに分けられ、それぞれ閲覧・編集権限が設定されています。<br>
医師は妊婦・患者さんの相談内容を含め全ての情報にアクセスができます。<br>
看護師は予約日程にのみアクセスできます。事務スタッフは予約日程の確認と、予約の編集が可能です。<br>
妊婦・患者さんは自分の予約と相談内容を確認できますが、<br>
URL直打ち等により他の妊婦・患者さんの予約や相談内容にアクセスすることができないよう設定されています。<br><br>
来院する時間があらかじめ決められているので待合室は混雑せず、<br>
待ち時間の減少により妊婦・患者さんの家族による送迎も容易になります。<br><br>
15分間隔の時間枠で予約してもらうことにより診察時間にゆとりが生まれ、<br>
医師は事前に相談内容をオンライン上で確認できるので、<br>
しっかり妊婦・患者さんと向き合う環境を作ることが可能になります。

---

### サイトテーマ

クリニックの来院予約システム。

---

### テーマを選んだ理由

産婦人科医の減少により、地元のクリニックでは膨大な待ち時間が発生している現状があります。<br>
いつ診察してもらえるか分からない不安から妊婦・患者が殺到してしまうという側面もあると考えました。<br>
また、医師に相談しづらいという声もよく聞きます。<br><br>
予約時に相談内容もあわせて記載していただくサイトを作ることによって、<br>
医師・患者の現状を少しでも改善できないかと思いこのテーマを選びました。

---

### ターゲットユーザ

クリニックの医師、産婦人科を利用する妊婦・患者さん。

---

### 主な利用シーン

#### 医師

予約と相談内容の確認。

#### 妊婦・患者

来院予約、相談内容の記入、予約や来院履歴の確認。

---

## 設計書
ER図
<https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=family-obgyn-clinic.drawio#R7Z1dj6M4FoZ%2FDdLsxY4wn%2FZlSCWzq62WZrtnd2euVnSFSlhRISJUd9X8%2BrXBzhd2KnQgJhxLpRIYQxKfw3PAfn1sudOXt1%2BKeLP6lC%2BSzHLsxZvlPliOE2Kf%2FmcF73WB5%2BG6YFmki7oI7Qu%2BpH8mvNDmpa%2FpItkeVSzzPCvTzXHhU75eJ0%2FlUVlcFPn342rPeXb8qZt4mTQKvjzFWbP0P%2BmiXNWl2An35X9L0uVKfDIKSH3kJRaV%2BS%2FZruJF%2Fv2gyJ1Z7rTI87LeenmbJhlrO9Eu9XlzxdHdFyuSdXnJCeU8%2FfqQl85%2Fy3%2BhxR%2F%2FXP37F%2FL5r%2Fwq3%2BLslf9gaxZY2LEmrjXDFrYtYcBt%2BS7ahP6SDdss46%2BsKNqWcVFy07k2LaDGKON0nRS0AFX7WRZvtmlVvS5ZpdniMX7PX0txIbEXPadvyeJzbTlWlxrxkV6M7bKLP9OLf%2BFfhh2Os3S5pttPtB3YJ0ZFsqXf5THelrwG%2F41JUSZvysZDO5NQV07yl6Qs3mkVfoLHjci92A34%2Fve9TyDMy1YH%2FuCIwpj74XJ36b2p6Aa3VgvLOU3LqexEf2aZxtlnen%2FE62VlsmOLsGZdFPnmt7hYJiUv2OQpa9DZN9pEu7ZPs2yaZzkz7DpfsyuV%2BYYfzJJnce7XvCzzF2E%2F3hy7i1ZN4Uf0jzbO1P7Zt3z6dad0H%2B336R%2BrXpTTfL0tC%2BpO7BoJter3hFn2Mquqnb5pamHbC03r9mVZt2HZX%2F%2FRzrYVCuO9bVubzT4x2%2Bk9l9Nmf84qmq3SxSJZX2UPR26PAwO4LdufX2zfKq2vFmfU99dxmUT563qxbRh19z1%2F3M7eBez9%2B4Nmywu61nWj7SZ%2BStfLx%2FrM4MQ1%2FFu5xpv6VvU7dZWLLncDX%2FHvgvanznMHtL80kPdG%2B%2BBKy3Z%2BxyeLVFyve9T7MFEfSlFPbwg8t2a%2BRejG4EF%2FE0cAB3ZswN4P2IlusBNQYMcwwS66qc6TfeZWj%2FVRtUH%2FJrBYr%2FANcKxHkt42A%2FsuYI8c3bRH1%2FbH3RfukcIeo%2Bd9s3OOQ32C%2BEY0FSWRAL%2Bog4k4NOWHIgIrFKj8BlwsEANIBv3Xot%2FXjX4Hj5n0taPCI70jeX%2Br4U3QHt4c5%2FNT9mNgXFd5CTiui480XL%2BW61g31100Zq67trz5x851V%2FKiNiMWiawoYsOuE2JR%2F5%2BFFvGtyYT14eC5FbV8Wrt3nKucAx7OW8Zxg3MFzneCPm0491pG5jvDOYGJc0%2BmYKTwJhXOiYWnVlR1yZPQmqiljOOkuMIn4FE8MBTvhuKeboq7up%2FE%2BqV4AJPirkQGwZhNH8q9aqMaUgVKcYVPgKM4kglm6QsbtqLqPW0yt0g16I4DNmuBlczODbAAmr6wm4bQev6C3xfI0X1IWoc5gcE7G6W1z2BATVHryKcwIKDCViRTtn7MZOjTGlTuAi%2BmG%2F1rX1FA%2B8wG1BxBneuOAv2KooCKYIX47s5nst3GGcAh3pH00BrEd4J47XMchCmBqF5Vb9mjB7xM9dp8yg9ZCX2%2BZ4%2F7dMP%2FiW%2BRh31tZ%2Fc2sC%2F8C6zI8EFfDZzI4JlA0FEg0D%2F%2FwXPHDP7aU%2BGB35N1uYfVuAyu8B1ZOGzR5T5KnqucAxzPkd1SCW%2BArgS69lkNyNZ9G%2FfbV2MD7axB0inLzYf54xkOlO9HMxzooYM6oHCv9BxwvPcM7rvCvfbJDp7uu7jf53egsPdlrDfq2LM%2BAQ7jfst5TgbjKozrn%2BTgj7r%2F3Qfa%2F%2B7L%2Bt%2BNPPasT8DDuLyvbjKrUpOEVSqqwCT1Vif1vnRuQ3%2BaWN9oYn%2BcAwPXxPrgNLE%2BUE2sL9PEKkE8fF1Uv1JYlZfAi99GCtsX%2FLVLYX1YyWB9oN1tws%2BOyL9LAuuzrFDg8nybXjbuG0YG2xfetctgAwcU3gOg3XCBSf7ai9%2FAiwWSrjoTCzqJBfqVsMG1nXh3FgwU9hh9MJAs3GTyw7b1EnDoR2HL8TmDeiXq9Wtkw5aJxe4L7dxX4bEdhbIufN%2BKHiqmVx05kVNPb5tWUiqfTYigz%2FxONQ2OTC1cJ5N9YKljj456TGaLq1Pof0KATX5T%2BhS4SBCYFSC6CgTa1bPBqJeACIAuARHIloAw6tmzPgEO46FtMN4NxvWrZ8NRr%2FhQeyo8jIeS0Rmjnj3vE%2FAwLhvbabze8X49tzHsI0qw%2BkEQkLD2NN3sxcpapzey38eIyyCVtfWtMVxlbdgccBm5sjYEOuYSysZcfgTS0EW3KgeCF%2FYlHb0DjAuDfJ37IC5oF92GTUH1uPPPhkD76UJZP90YkpDfxj3AQR9L3vUM9DuBvnYpLm6%2B6I0b%2BlhhkLFDH0tkdo13AWiIVzkDPMSbFf86Irp%2BQS0e9ZJ%2FGOiSf1i25N8V3evj5LlZ%2B09krTRJqroCun7ZLGr5vnVfROe%2BCg%2FpCMkGUY1g6rxXAGS5Z1jeEcu1K18R0n0f98xyoEOtSLKGq1FNfeQV4FiOZUMvIZv0zoZesDWZVKlP6JsbYo5Sb0Sz0xIy%2F4lvYe90Y%2FKgniIDSFPli36YlpoqRPpCv7jwwIdRBqmpqu%2Bb4WqqSDNbzcg1VQSoOpo4HRF8%2BGMt%2FWqqVA4E7pmAmOH1vuKCdk0VgTa8ToAOrxMzvH65M8BDvKRzwCC%2BE8RrV1CRpiR65IgHOgJPZCPwRjZ7qXuAgz6yDeQ7grx%2BURWyR71gN%2FdVeFBHtmLJbjMGf8YrALLcpCHsiuX69VT2uNMQ2lDTENqyNIRmDP68V8BjOWqqopPFMhFDHRSKq3yZr%2BNsti%2BNCvZ9kgU33r7OY15Znd3G%2F0vK8p2PqsevZU6LVuVLxo8mb2n5%2B8H2H%2BxSP%2Ft87%2BFNoIHtvIudNf2pvx%2FuHJzFdvenVXv78xaToqhcZ%2Fb5z6TIf8s%2Fxev3%2Bsg8Ze1V1at0APuatRtXhQeV6sZiLaT0OCE2zl%2BLp%2BRM04sF%2B0oRCZUxRNFzWCRZXKbfjr9J9wHCaT7sGw%2B5iYegSz1ENTv3Yg%2BpTqW%2FLH4%2FqMAfoPZX%2FpUV7CnpNTL1%2BIfe9mF9l%2BdsU9XfjVj9YH0hL9x7f%2F0LuwWo0xSkmttjWABVDb30e3vswjl3R3z%2B7jit7px3dt%2B%2BqvqN7o3mc6W5N25ybzgX3hpIscTarZ4tmi%2BfxkGG9WyhGsLoF56nvPro2aLBN%2B8WfJNkCRJJ%2BjHrOKVv2rh%2B2SZscuqMsLduGo1Yycya2A3nN9pkx71Up9TfUupIlhRogD2eg1Qn85tC2eWpXZ68%2BzQ4%2BmTu0AB7QbFk5dQ2hB6%2BYKFfYbLSc%2BD1lGLnLoLCIIfBPgoK2rXJSJLXbdzKNe7PEGOCTOVgtGsXOwhA9F%2B7LKtBvxL92jXLCF8rSL838EOVRGCZJKL5MlC9A9SrLE7CaqPxegAsEBi1hGgJSYefCQTdBIIB6JplGSlGHQkUFhl9JJCln5BEArrhV9yvDwUmEigcBl4kICYPWWfg1y%2BCJroFsP1ynkBNRCabayzhfJ06mIhEwYFIHTwVh%2Bb7OrCAr%2FIcgMA3S653Bnz9mSeJ7mTgPQMf6GpOiMhzCpoZjOe8AhzMHaEWMzC%2FGub6V1537FEvvc6dFR7MHZEzwkxhbOEVAGE%2B%2BglqF4nDj5TmtIpCaF631W015EopwbXTDOhukefloUMV8Wb1KV8krMb%2FAQ%3D%3D>

---

## チャレンジ要素一覧

<https://docs.google.com/spreadsheets/d/1toPswANU38lmgt_4d6ciueelMVVHRMtYk5pdkOB1JMc/edit?usp=sharing>

---

## 開発環境

- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JS ライブラリ：jQuery
- IDE：Cloud9
