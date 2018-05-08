.class Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;
.super Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;

.field final synthetic val$taskBounds:Landroid/graphics/Rect;

.field final synthetic val$taskId:I

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;Landroid/os/Handler;ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;->this$0:Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;

    iput p3, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;->val$taskId:I

    iput-object p4, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;->val$thumbnail:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;->val$taskBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 4

    .line 173
    new-instance v0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    iget v1, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;->val$taskId:I

    iget-object v2, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;->val$thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen$1;->val$taskBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
