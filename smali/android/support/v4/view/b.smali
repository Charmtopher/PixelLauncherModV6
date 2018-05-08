.class public Landroid/support/v4/view/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field final mBridge:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/support/v4/view/c;

    invoke-direct {v0, p0}, Landroid/support/v4/view/c;-><init>(Landroid/support/v4/view/b;)V

    iput-object v0, p0, Landroid/support/v4/view/b;->mBridge:Landroid/view/View$AccessibilityDelegate;

    .line 119
    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/d;
    .locals 2

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 289
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    .line 290
    if-eqz p1, :cond_0

    .line 291
    new-instance v0, Landroid/support/v4/view/a/d;

    invoke-direct {v0, p1}, Landroid/support/v4/view/a/d;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 294
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 226
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 227
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    .line 245
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    .line 246
    iget-object p2, p2, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 245
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 247
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 315
    sget-object v0, Landroid/support/v4/view/b;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 317
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
