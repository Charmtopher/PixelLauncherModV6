.class public final synthetic Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Lcom/android/launcher3/Launcher;

.field private final synthetic f$2:Landroid/os/Handler;

.field private final synthetic f$3:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field private final synthetic f$4:Landroid/content/ComponentName;

.field private final synthetic f$5:Ljava/util/List;

.field private final synthetic f$6:Landroid/os/UserHandle;

.field private final synthetic f$7:Ljava/util/List;

.field private final synthetic f$8:Lcom/android/launcher3/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/launcher3/Launcher;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$1:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$3:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iput-object p5, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$4:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$6:Landroid/os/UserHandle;

    iput-object p8, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$7:Ljava/util/List;

    iput-object p9, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$8:Lcom/android/launcher3/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$1:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$3:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v4, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$4:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$5:Ljava/util/List;

    iget-object v6, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$6:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$7:Ljava/util/List;

    iget-object v8, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$Py3u6bLxGgdT7oBb85lduLUIvFY;->f$8:Lcom/android/launcher3/ItemInfo;

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$3(Ljava/util/List;Lcom/android/launcher3/Launcher;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/launcher3/ItemInfo;)V

    return-void
.end method
