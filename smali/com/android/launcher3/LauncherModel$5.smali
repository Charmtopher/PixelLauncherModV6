.class Lcom/android/launcher3/LauncherModel$5;
.super Lcom/android/launcher3/util/Provider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$info:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field final synthetic val$si:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$5;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$5;->val$si:Lcom/android/launcher3/ShortcutInfo;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$5;->val$info:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-direct {p0}, Lcom/android/launcher3/util/Provider;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/android/launcher3/ShortcutInfo;
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$5;->val$si:Lcom/android/launcher3/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$5;->val$info:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$5;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 627
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$5;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$5;->val$info:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Z)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$5;->val$si:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 629
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 630
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$5;->val$si:Lcom/android/launcher3/ShortcutInfo;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 623
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel$5;->get()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method
