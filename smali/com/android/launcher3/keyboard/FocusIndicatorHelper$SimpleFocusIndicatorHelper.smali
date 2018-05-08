.class public Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;
.super Lcom/android/launcher3/keyboard/FocusIndicatorHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;-><init>(Landroid/view/View;)V

    .line 247
    return-void
.end method


# virtual methods
.method public final viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    return-void
.end method
