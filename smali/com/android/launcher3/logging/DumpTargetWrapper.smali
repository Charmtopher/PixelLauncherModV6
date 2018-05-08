.class public Lcom/android/launcher3/logging/DumpTargetWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field children:Ljava/util/ArrayList;

.field node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->children:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>()V

    .line 46
    new-instance v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-direct {v0}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    iput p1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    iput p2, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    iput-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/ItemInfo;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>()V

    .line 51
    new-instance v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-direct {v0}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    iget p1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    goto :goto_1

    :pswitch_1
    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 52
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public final getFlattenedList()Ljava/util/List;
    .locals 3

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logging/DumpTargetWrapper;

    .line 67
    invoke-virtual {v2}, Lcom/android/launcher3/logging/DumpTargetWrapper;->getFlattenedList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    return-object v0
.end method

.method public final writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    .line 139
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    .line 149
    iget-object p1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    return-object p1
.end method
