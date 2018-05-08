.class public abstract Lcom/android/launcher3/popup/SystemShortcut;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"


# instance fields
.field public final iconResId:I

.field public final labelResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->iconResId:I

    .line 37
    iput p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->labelResId:I

    .line 38
    return-void
.end method


# virtual methods
.method public abstract getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
.end method
