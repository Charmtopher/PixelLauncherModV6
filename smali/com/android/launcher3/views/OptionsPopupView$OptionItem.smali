.class public Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mClickListener:Landroid/view/View$OnLongClickListener;

.field final mControlTypeForLog:I

.field final mIconRes:I

.field final mLabelRes:I


# direct methods
.method public constructor <init>(IIILandroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mLabelRes:I

    .line 208
    iput p2, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mIconRes:I

    .line 209
    iput p3, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mControlTypeForLog:I

    .line 210
    iput-object p4, p0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->mClickListener:Landroid/view/View$OnLongClickListener;

    .line 211
    return-void
.end method
