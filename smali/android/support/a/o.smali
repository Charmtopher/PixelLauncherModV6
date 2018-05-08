.class final Landroid/support/a/o;
.super Landroid/support/a/y;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/y;-><init>(Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public final synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 253
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public final synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 253
    check-cast p1, Landroid/view/View;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method
