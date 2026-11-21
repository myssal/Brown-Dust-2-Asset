立绘语音素材库

位置：F:\Neowiz\Brown-Dust-2-Asset-master\audio\char
共 5,326 个 WAV，约 877.7 MiB，全部已解码并检查存在非零 PCM 数据。

ModPreview 使用 index.json 中的官方普通台词池：
  日语 621 条，207 套服装，各三条。
  韩语 549 条，183 套服装，各三条。
  韩语当前缺少 24 套服装、72 条；选择韩语时，这些角色自动使用日语。

官方映射：CostumeDesignConceptInfoTable 中 Profile/NormalLine 事件（protobuf 字段 11），由游戏 FMOD create-programmer-sound 回调逐条核对全部 621 条事件，确认对应 BattleReady_1/2/3 采样。official-click-events.json 保存事件与音源对应；missing-click-voices.json 是当前点按语音缺项清单。

原先提取的 4,156 条情绪、特殊、好感等语音继续保留，但不用于普通点按随机池。index.ja-JP.json、index.ko-KR.json 及未带 normal 前缀的 coverage CSV 记录这批条目；其中的缺失不代表普通点按语音缺失。index.normal.ja-JP.json 和 index.normal.ko-KR.json 保存本次普通台词音源、WAV 哈希、时长及原始游戏来源。

音频目录：ja-JP/<资源ID>/*.wav 与 ko-KR/<资源ID>/*.wav。服装与音频资源的别名通过官方映射关联，不能只按服装 ID 拼音频文件名。

游戏源数据保持只读。工具在 F:\Neowiz\tools\extract_standing_audio.mjs、unity_voice_bundles.mjs；官方事件探测记录位于 F:\Neowiz\releases\BD2ModPreview-standing-audio-20261117\work。

在 ModPreview 的设置中，将素材库根目录设为 F:\Neowiz\Brown-Dust-2-Asset-master；立绘点击互动默认开启，默认日语。设置可调整语音语言与音量，预览栏可快速静音。
