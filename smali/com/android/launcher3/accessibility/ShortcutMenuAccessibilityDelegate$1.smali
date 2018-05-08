.class Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

.field final synthetic val$coordinates:[I

.field final synthetic val$info:Lcom/android/launcher3/ShortcutInfo;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/ShortcutInfo;J[I)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$info:Lcom/android/launcher3/ShortcutInfo;

    iput-wide p3, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$screenId:J

    iput-object p5, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$coordinates:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$info:Lcom/android/launcher3/ShortcutInfo;

    iget-wide v5, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$screenId:J

    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$coordinates:[I

    const/4 v3, 0x0

    aget v7, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$coordinates:[I

    const/4 v9, 0x1

    aget v8, v0, v9

    const-wide/16 v3, -0x64

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$info:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, v1, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0, v9}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->announceConfirmation(I)V

    .line 81
    return-void
.end method
