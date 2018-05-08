.class Lcom/android/launcher3/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 445
    iget-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 446
    return-void
.end method
