.class Lcom/android/launcher3/popup/ArrowPopup$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/ArrowPopup;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$1;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-static {p1}, Lcom/android/launcher3/popup/ArrowPopup;->access$000(Lcom/android/launcher3/popup/ArrowPopup;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 93
    return-void
.end method
