.class public Lcom/android/launcher3/model/BgDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final appWidgets:Ljava/util/ArrayList;

.field public final deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

.field public final folders:Lcom/android/launcher3/util/LongArrayMap;

.field public hasShortcutHostPermission:Z

.field public final itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

.field public lastBindId:I

.field public final pinnedShortcutCounts:Ljava/util/Map;

.field public final widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

.field public final workspaceItems:Ljava/util/ArrayList;

.field public final workspaceScreens:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    .line 101
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 106
    new-instance v0, Lcom/android/launcher3/model/WidgetsModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/WidgetsModel;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    return-void
.end method

.method private declared-synchronized dumpProto(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15

    move-object v1, p0

    monitor-enter p0

    .line 171
    :try_start_0
    new-instance v0, Lcom/android/launcher3/logging/DumpTargetWrapper;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(II)V

    .line 172
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 173
    move v4, v3

    :goto_0
    iget-object v5, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_0

    .line 174
    iget-object v5, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    new-instance v5, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-direct {v5, v6, v4}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(II)V

    invoke-virtual {v2, v7, v8, v5}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_0
    move v4, v3

    :goto_1
    iget-object v5, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v5

    const/4 v7, 0x3

    const-wide/16 v8, -0x64

    const-wide/16 v10, -0x65

    if-ge v4, v5, :cond_4

    .line 180
    iget-object v5, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/FolderInfo;

    .line 181
    new-instance v12, Lcom/android/launcher3/logging/DumpTargetWrapper;

    iget-object v13, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v13}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v13

    invoke-direct {v12, v7, v13}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(II)V

    .line 182
    invoke-virtual {v12, v5}, Lcom/android/launcher3/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 183
    iget-object v7, v5, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/ShortcutInfo;

    .line 184
    new-instance v14, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-direct {v14, v13}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 185
    invoke-virtual {v14, v13}, Lcom/android/launcher3/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 186
    invoke-virtual {v12, v14}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    .line 187
    goto :goto_2

    .line 188
    :cond_1
    iget-wide v13, v5, Lcom/android/launcher3/FolderInfo;->container:J

    cmp-long v7, v13, v10

    if-nez v7, :cond_2

    .line 189
    invoke-virtual {v0, v12}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    goto :goto_3

    .line 190
    :cond_2
    iget-wide v10, v5, Lcom/android/launcher3/FolderInfo;->container:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    .line 191
    iget-wide v7, v5, Lcom/android/launcher3/FolderInfo;->screenId:J

    invoke-virtual {v2, v7, v8}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-virtual {v5, v12}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    .line 179
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    :cond_4
    move v4, v3

    :goto_4
    iget-object v5, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 196
    iget-object v5, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ItemInfo;

    .line 197
    instance-of v12, v5, Lcom/android/launcher3/FolderInfo;

    if-nez v12, :cond_6

    .line 198
    new-instance v12, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-direct {v12, v5}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 201
    invoke-virtual {v12, v5}, Lcom/android/launcher3/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 202
    iget-wide v13, v5, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v13, v13, v10

    if-nez v13, :cond_5

    .line 203
    invoke-virtual {v0, v12}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    goto :goto_5

    .line 204
    :cond_5
    iget-wide v13, v5, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v13, v13, v8

    if-nez v13, :cond_6

    .line 205
    iget-wide v13, v5, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v13, v14}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-virtual {v5, v12}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    .line 195
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 208
    :cond_7
    move v4, v3

    :goto_6
    iget-object v5, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 209
    iget-object v5, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ItemInfo;

    .line 210
    new-instance v12, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-direct {v12, v5}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 211
    invoke-virtual {v12, v5}, Lcom/android/launcher3/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 212
    iget-wide v13, v5, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v13, v13, v10

    if-nez v13, :cond_8

    .line 213
    invoke-virtual {v0, v12}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    goto :goto_7

    .line 214
    :cond_8
    iget-wide v13, v5, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v13, v13, v8

    if-nez v13, :cond_9

    .line 215
    iget-wide v13, v5, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v13, v14}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-virtual {v5, v12}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    .line 208
    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 221
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual {v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;->getFlattenedList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    move v0, v3

    :goto_8
    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 224
    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-virtual {v5}, Lcom/android/launcher3/logging/DumpTargetWrapper;->getFlattenedList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 227
    :cond_b
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "--debug"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 228
    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_11

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-nez v5, :cond_c

    const-string v5, ""

    goto/16 :goto_b

    :cond_c
    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    packed-switch v8, :pswitch_data_0

    const-string v5, "UNKNOWN TARGET TYPE"

    goto/16 :goto_b

    :pswitch_0
    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    const-class v9, Lcom/android/launcher3/model/nano/LauncherDumpProto$ContainerType;

    invoke-static {v8, v9}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    iget v9, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    if-ne v9, v6, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " id="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_b

    :cond_d
    iget v9, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    if-ne v9, v7, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " grid("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_e
    move-object v5, v8

    goto/16 :goto_b

    :pswitch_1
    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    const-class v9, Lcom/android/launcher3/model/nano/LauncherDumpProto$ItemType;

    invoke-static {v8, v9}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", package="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_f
    iget-object v9, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", component="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", grid("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), span("

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), pageIdx="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " user="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :goto_b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p3

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 231
    :cond_11
    monitor-exit p0

    return-void

    .line 233
    :cond_12
    :try_start_1
    new-instance v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;

    invoke-direct {v0}, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;-><init>()V

    .line 234
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iput-object v2, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 235
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_13

    .line 236
    iget-object v2, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    aput-object v5, v2, v3

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 238
    :cond_13
    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    invoke-static {v0}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 242
    const-string v2, "BgDataModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Bytes"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    :try_start_3
    const-string v2, "BgDataModel"

    const-string v3, "Exception writing dumpsys --proto"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized addItem(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Z)V
    .locals 6

    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v1, p2, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 297
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 304
    :pswitch_1
    invoke-static {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    .line 305
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    .line 306
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 307
    new-instance v2, Landroid/util/MutableInt;

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 308
    iget-object v4, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 310
    :cond_0
    iget v4, v2, Landroid/util/MutableInt;->value:I

    add-int/2addr v4, v3

    iput v4, v2, Landroid/util/MutableInt;->value:I

    .line 314
    :goto_0
    if-eqz p3, :cond_1

    iget v2, v2, Landroid/util/MutableInt;->value:I

    if-ne v2, v3, :cond_1

    .line 315
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p1

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p1, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v2, v5, v0}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    iput-boolean v3, p1, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "DeepShortcutManager"

    const-string v3, "Failed to pin shortcut"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p1, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_1

    .line 340
    :pswitch_2
    iget-object p1, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 299
    :pswitch_3
    iget-object p1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->id:J

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/FolderInfo;

    invoke-virtual {p1, v0, v1, p3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 300
    iget-object p1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 321
    :cond_1
    :goto_1
    :pswitch_4
    :try_start_3
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_2

    .line 325
    :cond_2
    if-eqz p3, :cond_3

    .line 326
    iget-object p1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result p1

    if-nez p1, :cond_5

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "adding item: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to a folder that  doesn\'t exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    const-string p2, "BgDataModel"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 333
    :cond_3
    :try_start_4
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(J)Lcom/android/launcher3/FolderInfo;

    move-result-object p1

    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p1, p2, v1}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 323
    :cond_4
    :goto_2
    :try_start_5
    iget-object p1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 343
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "--proto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/BgDataModel;->dumpProto(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Data Model:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---- workspace screens: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ---- workspace items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    move v0, p2

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ge v0, v1, :cond_2

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ---- appwidget items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    move v0, p2

    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ---- folder items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    move v0, p2

    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/FolderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 150
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ---- items id map "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    move v0, p2

    :goto_4
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 155
    :cond_5
    array-length v0, p4

    if-lez v0, :cond_7

    aget-object p2, p4, p2

    const-string p4, "--all"

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "shortcuts"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {p2}, Lcom/android/launcher3/util/MultiHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    goto :goto_6

    .line 162
    :cond_6
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    goto :goto_5

    .line 165
    :cond_7
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized findOrMakeFolder(J)Lcom/android/launcher3/FolderInfo;
    .locals 2

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 352
    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 355
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    monitor-exit p0

    return-object v0

    .line 350
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    .locals 4

    monitor-enter p0

    .line 254
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 255
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 273
    :pswitch_1
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    .line 275
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/MutableInt;->value:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/util/MutableInt;->value:I

    if-nez v3, :cond_1

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/InstallShortcutReceiver;->getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v2

    .line 277
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    goto :goto_1

    .line 288
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 257
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 269
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 270
    goto :goto_2

    .line 284
    :cond_1
    :goto_1
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    nop

    .line 291
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    goto :goto_0

    .line 293
    :cond_2
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final varargs declared-synchronized removeItem(Landroid/content/Context;[Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 3

    monitor-enter p0

    .line 365
    if-eqz p1, :cond_1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 367
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    .line 369
    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 370
    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 373
    :cond_0
    goto :goto_0

    .line 364
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 377
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 378
    iget-object p3, p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 379
    iget-object p3, p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 380
    :goto_2
    if-eqz p3, :cond_4

    .line 381
    new-instance p3, Lcom/android/launcher3/util/ComponentKey;

    .line 382
    iget-object v0, p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    iget-object p2, p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_4
    goto :goto_1

    .line 386
    :cond_5
    monitor-exit p0

    return-void

    .line 364
    :goto_3
    monitor-exit p0

    throw p1
.end method
