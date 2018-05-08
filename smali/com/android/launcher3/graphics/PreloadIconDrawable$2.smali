.class Lcom/android/launcher3/graphics/PreloadIconDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;->this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;->this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->access$202(Lcom/android/launcher3/graphics/PreloadIconDrawable;Z)Z

    .line 235
    return-void
.end method
