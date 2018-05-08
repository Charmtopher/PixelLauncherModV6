.class Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field final synthetic val$item:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->val$item:Lcom/android/launcher3/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->val$item:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 200
    return-void
.end method
