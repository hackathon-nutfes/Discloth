<template>
    <v-card
        outlined
        class="mx-auto"
        height="600"
        >
        <v-card-title class="headline">
            タグの登録
        </v-card-title>
        <v-card-text>
                <v-text-field
                    label="brand"
                    background-color="white"
                    outlined
                    v-model="brand"
                    filled
                    clearable
                    ></v-text-field>
                <v-select
                    v-model.number="gender_id"
                    :items="gender"
                    :menu-props="{ top: true, offsetY: true }"
                    label="gender"
                    item-text="name"
                    item-value="id"
                    outlined
                    clearable
                    ></v-select>
                  <v-select
                    v-model.number="price_id"
                    :items="price"
                    :menu-props="{ top: true, offsetY: true }"
                    label="price"
                    item-text="name"
                    item-value="id"
                    outlined
                    clearable
                    ></v-select>
                    <v-select
                    v-model.number="design_id"
                    :items="design"
                    :menu-props="{ top: true, offsetY: true }"
                    label="design"
                    item-text="name"
                    item-value="id"
                    outlined
                    clearable
                    ></v-select>
                  <v-select
                    v-model.number="size_id"
                    :items="size"
                    :menu-props="{ top: true, offsetY: true }"
                    label="size"
                    item-text="name"
                    item-value="id"
                    outlined
                    clearable
                    ></v-select>
                    <v-select
                    v-model.number="season_id"
                    :items="season"
                    :menu-props="{ top: true, offsetY: true }"
                    label="season"
                    item-text="name"
                    item-value="id"
                    outlined
                    clearable
                    ></v-select>
                  <v-select
                    v-model.number="kind_id"
                    :items="kind"
                    :menu-props="{ top: true, offsetY: true }"
                    label="kind"
                    item-text="name"
                    item-value="id"
                    outlined
                    clearable
                    ></v-select>
                    <v-select
                    v-model.number="color_id"
                    :items="color"
                    :menu-props="{ top: true, offsetY: true }"
                    label="color"
                    item-text="name"
                    item-value="id"
                    outlined
                    clearable
                    ></v-select>
        </v-card-text>
</v-card>
</template>
<script>
  export default {
    data(){
      return{
          gender_id: [],
          price_id: [],
          design_id: [],
          size_id: [],
          season_id: [],
          kind_id: [],
          color_id: [],
          brand: [],

          gender:[
                {id: 1, name: "Men's" },
                {id: 2, name: "Lady's" },
                {id: 3, name: "Kid's" },
                {id: 4, name: "others" },
            ],

          price:[
              { id: 1, name: '0~1000' },
                { id: 2, name: '1001~3000' },
                { id: 3, name: '3001~5000' },    
                { id: 4, name: '5001~8000' },
                { id: 5, name: '8001~10000' },
                { id: 6, name: '10001~12000' },
                { id: 7, name: '12001~15000' },
                { id: 8, name: '15001~18000' },
                { id: 9, name: '18001~20000' },
                { id: 10, name: '20001~25000' },
                { id: 11, name: '25001~30000' },
                { id: 12, name: '30001~40000' },
                { id: 13, name: '40001~50000' },
                { id: 14, name: '50001~60000' },
                { id: 15, name: '60001~70000' },
                { id: 16, name: '70001~80000' },
                { id: 17, name: '80001~90000' },
                { id: 18, name: '90001~100000' },
                { id: 19, name: '100001~' },
            ],
            
            design:[
                { id: 1, name: '無地' },
                { id: 2, name: '単色' },
                { id: 3, name: 'ワンポイントデザイン' },
                { id: 4, name: 'プリントデザイン' },
                { id: 5, name: 'ボーダー' },
                { id: 6, name: 'ストライプ' },
                { id: 7, name: 'ドット・水玉' },
                { id: 8, name: '花柄' },
                { id: 9, name: 'トラ柄' },
                { id: 10, name: 'ボタニカル柄' },
                { id: 11, name: 'アーガイル柄' },
                { id: 12, name: 'カモフラージュ柄' },        
                { id: 13, name: 'ギンガムチェック' },        
                { id: 14, name: 'タータンチェック' },        
                { id: 15, name: 'グレンチェック' },        
                { id: 16, name: 'ブロックチェック' },        
                { id: 17, name: 'バーバリーチェック' },        
                { id: 18, name: 'マドラスチェック' },        
                { id: 19, name: 'ダマスク柄' },        
                { id: 20, name: 'ノルディック柄' },        
                { id: 21, name: 'トライバル柄' },        
                { id: 22, name: 'others' },
            ],

            size:[
                {id: 1, name: 'free_clothes_hat' },
                {id: 2, name: 'XS_Japan' },
                {id: 3, name: 'S_Japan' },
                {id: 4, name: 'M_Jdocker-compose run --rm view npm installapan' },
                {id: 5, name: 'L_Japan' },
                {id: 6, name: 'XL_Japan' },
                {id: 7, name: '34_France=XS' },
                {id: 8, name: '36_France=S' },
                {id: 9, name: '38_France=M' },
                {id: 10, name: '40_France=L' },
                {id: 11, name: '42_France=XL' },
                {id: 12, name: '6_England=XS' },
                {id: 13, name: '8_England=S' },
                {id: 14, name: '10~12_England=M' },
                {id: 15, name: '14_England=L' },
                {id: 16, name: '16_England=XL' },
                {id: 17, name: '38=Italy=XS' },
                {id: 18, name: '40=Italy=S' },
                {id: 19, name: '42=Italy=M' },
                {id: 20, name: '44=Italy=L' },
                {id: 21, name: '46=Italy=XL' },
                {id: 22, name: '4_USA=XS' },
                {id: 23, name: '6_USA=S' },
                {id: 24, name: '8_USA=M' },
                {id: 25, name: '10_USA=L' },
                {id: 26, name: '12_USA=XL' },
                {id: 27, name: 'free_shoes' },
                {id: 28, name: '22cm_Japan' },
                {id: 29, name: '22.5cm_Japan' },
                {id: 30, name: '23cm_Japan' },
                {id: 13, name: '23.5cm_Japan' },
                {id: 32, name: '24cm_Japan' },
                {id: 33, name: '24.5cm_Japan' },
                {id: 34, name: '25cm_Japan' },
                {id: 35, name: '25.5cm_Japan' },
                {id: 36, name: '26cm_Japan' },
                {id: 37, name: '26.5cm_Japan' },
                {id: 38, name: '27cm_Japan' },
                {id: 39, name: '27.5cm_Japan' },
                {id: 40, name: '28cm_Japan' },
                {id: 41, name: '28.5cm_Japan' },
                {id: 42, name: '29cm_Japan' },
                {id: 43, name: '29.5cm_Japan' },
                {id: 44, name: '30cm_Japan' },
                {id: 45, name: '35_Europe' },
                {id: 46, name: '36_Europe' },
                {id: 47, name: '37_Europe' },
                {id: 48, name: '38_Europe' },
                {id: 49, name: '39_Europe' },
                {id: 50, name: '40_Europe' },
                {id: 51, name: '41_Europe' },
                {id: 52, name: '42_Europe' },
                {id: 53, name: '43_Europe' },
                {id: 54, name: '44_Europe' },
                {id: 55, name: '45_Europe' },
                {id: 56, name: '1_England' },
                {id: 57, name: '2_England' },
                {id: 58, name: '3_England' },
                {id: 59, name: '4_England' },
                {id: 60, name: '5_England' },
                {id: 61, name: '6_England' },
                {id: 62, name: '7_England' },
                {id: 63, name: '8_England' },
                {id: 64, name: '9_England' },
                {id: 65, name: '10_England' },
                {id: 66, name: '3_USA' },
                {id: 67, name: '4_USA' },
                {id: 68, name: '5_USA' },
                {id: 69, name: '6_USA' },
                {id: 70, name: '7_USA' },
                {id: 71, name: '8_USA' },
                {id: 72, name: '9_USA' },
                {id: 73, name: '10_USA' },
                {id: 74, name: '11_USA' },
                {id: 75, name: '12_USA' },
                {id: 76, name: '13_USA' },
                {id: 77, name: '14_USA' },
                {id: 78, name: '15_USA' },
                {id: 79, name: '16_USA' },
            ],
            season:[
                { id: 1, name: 'Spring' },
                { id: 2, name: 'Summer' },
                { id: 3, name: 'Fall' },
                { id: 4, name: 'Winter' },
                { id: 5, name: 'All season' },
                { id: 6, name: 'others' },
            ],

            kind:[
                { id: 1, name: "Tシャツ" },
                { id: 2, name: "Yシャツ"  },
                { id: 3, name: "ポロシャツ" },
                { id: 4, name: "タンクトップ" },
                { id: 5, name: "カーディガン" },
                { id: 6, name: "ニット/セーター" },
                { id: 7, name: "パーカー" },
                { id: 8, name: "ブラウス" },
                { id: 9, name: "トレーナー/スウェット" },
                { id: 10, name: "ワン/オフショルダー" },
                { id: 11, name: "ジーンズ" },
                { id: 12, name: "チノパンツ" },
                { id: 13, name: "テーパードパンツ" },
                { id: 14, name: "ワイドパンツ" },
                { id: 15, name: "ガウチョパンツ" },
                { id: 16, name: "フレアスカート" },
                { id: 17, name: "タイトスカート" },
                { id: 18, name: "プリーツスカート" },
                { id: 19, name: "ラップスカート" },
                { id: 20, name: "レーススカート" },
                { id: 21, name: "シャツワンピース" },
                { id: 22, name: "ニットワンピース" },
                { id: 23, name: "ティアードワンピース" },
                { id: 24, name: "カシュクールワンピース" },
                { id: 25, name: "パーカーワンピース" },
                { id: 26, name: "デニムジャケット" },
                { id: 27, name: "レザージャケット" },
                { id: 28, name: "ミリタリージャケット" },
                { id: 29, name: "テーラードジャケット" },
                { id: 30, name: "ダウンジャケット" },
                { id: 31, name: "チェスターコート" },
                { id: 32, name: "Pコート" },
                { id: 33, name: "ノーカラーコート" },
                { id: 34, name: "トレンチコート" },
                { id: 35, name: "ボアコート" },
                { id: 36, name: "スタンドカラーコート" },
                { id: 37, name: "ダッフルコート" },
                { id: 38, name: "ダウンコート" },
                { id: 39, name: "others" },
            ],

            color:[
                { id:1, name: 'white' },
                { id:2, name: 'black' },
                { id:3, name: 'Grey_light' },
                { id:4, name: 'Grey_strong' },
                { id:5, name: 'Grey_deep' },
                { id:6, name: 'Red_light' },
                { id:7, name: 'Red_strong' },
                { id:8, name: 'Red_deep' },
                { id:9, name: 'Blue_light' },
                { id:10, name: 'Blue_strong' },
                { id:11, name: 'Blue_deep' },
                { id:12, name: 'Green_light' },
                { id:13, name: 'Green_strong' },
                { id:14, name: 'Green_deep' },
                { id:15, name: 'Yellow_light' },
                { id:16, name: 'Yellow_strong' },
                { id:17, name: 'Yellow_deep' },
                { id:18, name: 'Orange_light' },
                { id:19, name: 'Orange_strong' },
                { id:20, name: 'Orange_deep' },
                { id:21, name: 'Pink_light' },
                { id:22, name: 'Pink_strong' },
                { id:23, name: 'Pink_deep' },
                { id:24, name: 'Purple_light' },
                { id:25, name: 'Purple_strong' },
                { id:26, name: 'Purple_deep' },
                { id:27, name: 'Brown_light' },
                { id:28, name: 'Brown_strong' },
                { id:29, name: 'Brown_deep' },
                { id:30, name: 'Gold_light' },
                { id:31, name: 'Gold_strong' },
                { id:32, name: 'Gold_deep' },
                { id:33, name: 'Silver_light' },
                { id:34, name: 'Silver_strong' },
                { id:35, name: 'Silver_deep' },
                { id:36, name: 'others' },
            ],


      }
    },
  }
</script>