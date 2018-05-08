.class public Lcom/android/launcher3/keyboard/FocusedItemDecorator;
.super Landroid/support/v7/widget/ae;
.source "SourceFile"


# instance fields
.field public mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/ae;-><init>()V

    .line 36
    new-instance v0, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    .line 37
    return-void
.end method


# virtual methods
.method public final onDraw$13fcd2ff$2854d342(Landroid/graphics/Canvas;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    .line 46
    return-void
.end method
