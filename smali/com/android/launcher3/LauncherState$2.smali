.class Lcom/android/launcher3/LauncherState$2;
.super Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherState;

.field final synthetic val$centerPage:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherState;Landroid/view/animation/Interpolator;I)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/launcher3/LauncherState$2;->this$0:Lcom/android/launcher3/LauncherState;

    iput p3, p0, Lcom/android/launcher3/LauncherState$2;->val$centerPage:I

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final getPageAlpha(I)F
    .locals 1

    .line 230
    iget v0, p0, Lcom/android/launcher3/LauncherState$2;->val$centerPage:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
