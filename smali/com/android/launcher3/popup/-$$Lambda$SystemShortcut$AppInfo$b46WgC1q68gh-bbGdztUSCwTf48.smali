.class public final synthetic Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$AppInfo$b46WgC1q68gh-bbGdztUSCwTf48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/BaseDraggingActivity;

.field private final synthetic f$1:Lcom/android/launcher3/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$AppInfo$b46WgC1q68gh-bbGdztUSCwTf48;->f$0:Lcom/android/launcher3/BaseDraggingActivity;

    iput-object p2, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$AppInfo$b46WgC1q68gh-bbGdztUSCwTf48;->f$1:Lcom/android/launcher3/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$AppInfo$b46WgC1q68gh-bbGdztUSCwTf48;->f$0:Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v1, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$AppInfo$b46WgC1q68gh-bbGdztUSCwTf48;->f$1:Lcom/android/launcher3/ItemInfo;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->lambda$getOnClickListener$0(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V

    return-void
.end method
