.class public Lcom/android/launcher3/widget/WidgetsDiffReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mIconCache:Lcom/android/launcher3/IconCache;

.field final mListener:Landroid/support/v7/widget/V;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/IconCache;Landroid/support/v7/widget/V;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsDiffReporter;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 42
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetsDiffReporter;->mListener:Landroid/support/v7/widget/V;

    .line 43
    return-void
.end method
