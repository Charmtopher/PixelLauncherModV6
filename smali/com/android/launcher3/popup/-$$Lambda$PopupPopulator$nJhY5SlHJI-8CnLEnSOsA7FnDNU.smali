.class public final synthetic Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/shortcuts/DeepShortcutView;

.field private final synthetic f$1:Lcom/android/launcher3/ShortcutInfo;

.field private final synthetic f$2:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field private final synthetic f$3:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;->f$0:Lcom/android/launcher3/shortcuts/DeepShortcutView;

    iput-object p2, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;->f$1:Lcom/android/launcher3/ShortcutInfo;

    iput-object p3, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;->f$2:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iput-object p4, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;->f$3:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;->f$0:Lcom/android/launcher3/shortcuts/DeepShortcutView;

    iget-object v1, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;->f$1:Lcom/android/launcher3/ShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;->f$2:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v3, p0, Lcom/android/launcher3/popup/-$$Lambda$PopupPopulator$nJhY5SlHJI-8CnLEnSOsA7FnDNU;->f$3:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$1(Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method
