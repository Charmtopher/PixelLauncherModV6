.class public Lcom/android/launcher3/LauncherAppWidgetInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"


# instance fields
.field public appWidgetId:I

.field public bindOptions:Landroid/content/Intent;

.field public installProgress:I

.field mHasNotifiedInitialWidgetSizeChanged:Z

.field public pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

.field public providerName:Landroid/content/ComponentName;

.field public restoreStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 92
    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 127
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->itemType:I

    .line 128
    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 92
    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 107
    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 108
    iput-object p2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->itemType:I

    goto :goto_0

    .line 113
    :cond_0
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->itemType:I

    .line 118
    :goto_0
    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 119
    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 121
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 122
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 123
    return-void
.end method


# virtual methods
.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasRestoreFlag(I)Z
    .locals 1

    .line 165
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isCustomWidget()Z
    .locals 2

    .line 131
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v1, -0x64

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 2

    .line 136
    invoke-super {p0, p1}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 137
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "appWidgetProvider"

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 138
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "restored"

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p1

    const-string v0, "intent"

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 140
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    .line 141
    return-void
.end method
