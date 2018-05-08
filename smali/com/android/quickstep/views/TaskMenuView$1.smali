.class Lcom/android/quickstep/views/TaskMenuView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskMenuView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskMenuView;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$1;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView$1;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v6, v0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 82
    return-void
.end method
